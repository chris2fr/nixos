{
  lib,
  stdenv_32bit,
  fetchurl,
  glibc,
  cups,
  dpkg,
  ghostscript,
  a2ps,
  coreutils,
  gnused,
  gawk,
  file,
  gnugrep,
  makeWrapper,
  perl,
  buildFHSEnv
}:
  let
    stdenv = stdenv_32bit;

    version   = "1.0.1-0";
    model     = "mfcj3930dw";
    driverDir = "opt/brother/Printers/${ model }";

    debSrc = fetchurl {
      url = "https://download.brother.com/welcome/dlf101182/${ model }lpr-${ version }.i386.deb";
      sha256 = "sha256-l3ViK3dJOXNhw6VsathXY/89x4NWHeZJ13qRK0RMAEc=";
    };
 lpr-pkg = stdenv.mkDerivation rec {
      inherit version;

      pname = "${ model }-lpr-pkg";

      src = debSrc;

      nativeBuildInputs = [ makeWrapper dpkg ];
      buildInputs = [ cups perl ghostscript a2ps gnused coreutils ];

      unpackCmd = "mkdir -p ./deb/; dpkg-deb -x $curSrc ./deb/";

      installPhase = ''
        mkdir -p $out/${ driverDir }
        cp -a ${ driverDir }/. $out/${ driverDir }/

        mkdir -p $out/bin
        cp -a usr/bin/. $out/bin/
      '';
    };

    # The binary filter is a tool and has hardcoded paths to /opt/brother/Printers/
    # So we just wrap it in FHS and call it a day
    infFhs = buildFHSEnv rec {
      name = "${ model }-lpd-inf-fhs";

      targetPkgs = pkgs: with pkgs; [
        lpr-pkg
        cups perl ghostscript a2ps gnused coreutils file
      ];
    };

    lpr = stdenv.mkDerivation rec {
      inherit version;

      pname = "${ model }-lpr";

      src = debSrc;

      nativeBuildInputs = [ makeWrapper dpkg ];
      buildInputs = [ cups perl ghostscript a2ps ];

      unpackCmd = "mkdir -p ./deb/; dpkg-deb -x $curSrc ./deb/";

      patches = [ ./fixups.patch ];

      patchPhase = ''
        INTERPRETER="${ stdenv.cc.bintools.dynamicLinker }"

        patchPhase

        # Fix the driver binary

        patchelf \
          --set-rpath "${ stdenv.cc.cc.lib }/lib" \
          --set-interpreter "$INTERPRETER" \
          ${ driverDir }/lpd/br${ model }filter

        # Fix brprintconf

        # TODO: there are strings in the file referring to /opt/brother/Printers/%s/inf/br
        #       that would need fixing

        mkdir bin/
        mv usr/bin/brprintconf_${ model } bin/
        rm -rf usr/bin

        patchelf \
          --set-rpath ${ stdenv.cc.cc.lib }/lib \
          --set-interpreter "$INTERPRETER" \
          bin/brprintconf_${ model }
      '';

      installPhase = ''
        mkdir -p $out/${ driverDir }/lpd
        cp -a ${ driverDir }/lpd/. $out/${ driverDir }/lpd

        # Link inf directory
        ln -s ${ lpr-pkg }/opt/brother/Printers/mfcj3930dw/inf $out/opt/brother/Printers/mfcj3930dw/inf

        mkdir $out/bin

        cat > "$out/bin/brprintconf_${ model }" <<EOSH
        #!/bin/sh
        set -x
        exec "${ infFhs }/bin/${ model }-lpd-inf-fhs" -c "set -x; exec -a "brprintconf_${ model }" brprintconf_${ model } \"\\\$@\"" -- "\$@"
        EOSH

        chmod +x "$out/bin/brprintconf_mfcj3930dw"

        # Link bin
        ln -s ${ lpr-pkg }/bin $out/bin

        wrapProgram "$out/${ driverDir }/lpd/filter_${ model }" \
          --set PRINTER "${ model }" \
          --set BR_PRT_PATH "$out/${ driverDir }/lpd/filter_${ model }" \
          --prefix PATH ":" ${ lib.makeBinPath [ ghostscript a2ps file gnused gnugrep coreutils ] }

        FILTER_FHS_WRAPPER="$out/${ driverDir }/lpd/br${ model }filter"
        FILTER_BINARY="$out/${ driverDir }/lpd/.br${ model }filter-wrapped"

        mv "$FILTER_FHS_WRAPPER" "$FILTER_BINARY"

        cat > "$FILTER_FHS_WRAPPER" <<EOSH
        #!/bin/sh
        set -x
        exec "${ infFhs }/bin/${ model }-lpd-inf-fhs" -c "set -x; exec -a "br${ model }filter" $FILTER_BINARY \"\\\$@\"" -- "\$@"
        EOSH

        chmod +x "$FILTER_FHS_WRAPPER"
      '';

      meta = with lib; {
        homepage = "https://www.brother.com/";
        description = "Brother MFC-J3930DW LPR driver";
        license = licenses.unfree;
        platforms = platforms.linux;
        downloadPage = "https://support.brother.com/g/b/downloadlist.aspx?c=us&lang=en&prod=${ model }_all&os=128&autolayerclose=1";
        # maintainers = with maintainers; [ svavs ];
      };
    };
  in
    lpr