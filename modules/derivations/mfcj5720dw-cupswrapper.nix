{
  lib,
  stdenv,
  fetchurl,
  makeWrapper,
  dpkg,
  cups,
  perl,
  coreutils,
  gnused,
  gnugrep,
  pkgs,
  mfcj5720dw-lpr
  # nix-shell -p stdenv_32bit glibc cups dpkg ghostscript a2ps coreutils gnused gawk file gnugrep makeWrapper perl
}:
  let
    model      = "mfcj5720dw";
    wrapperDir = "opt/brother/Printers/${ model }/cupswrapper";
  in
    stdenv.mkDerivation rec {
      pname = "${ model }-cupswrapper";
      version = "3.0.1-0";

      src = fetchurl {
      url = "https://download.brother.com/welcome/dlf101183/${ model }cupswrapper-${ version }.i386.deb";
      sha256 = "sha256-l3ViK3dJOXNhw6VsathXY/89x4NWHeZJ13qRK0RMAEc=";
    };

      unpackCmd = "mkdir -p ./deb/; ${ dpkg }/bin/dpkg-deb -x $curSrc ./deb/";

      nativeBuildInputs = [ makeWrapper ];
      buildInputs = [ cups perl coreutils gnused gnugrep mfcj5720dw-lpr ];

      patches = [ ./printer-regex.patch ];

      patchPhase = ''
        patchPhase

        pushd "${ wrapperDir }"

        substituteInPlace "cupswrapper${ model }" \
          --replace /usr/share/cups/model "$out/share/cups/model" \
          --replace /usr/share/ppd "$out/share/ppd" \
          --replace /usr/lib/cups/filter "$out/lib/cups/filter" \
          --replace /usr/lib64/cups/filter "$out/lib64/cups/filter" \
          --replace /opt "$out/opt" \
          --replace /usr "$out/usr" \
          --replace /etc "$out/etc" \
          --replace "cp " "\cp -p "

        popd
      '';

      installPhase = ''
        mkdir -p $out
        cp -a . $out

        sed -i '/\$DEBUG=0;/c\$DEBUG=1;' $out/${ wrapperDir }/brother_lpdwrapper_${ model }

        wrapProgram "$out/${ wrapperDir }/brother_lpdwrapper_${ model }" \
          --inherit-argv0 \
          --prefix PATH ":" ${ lib.makeBinPath [ coreutils gnugrep mfcj5720dw-lpr ] }

        # Link LPR things
        ln -s ${ mfcj5720dw-lpr }/opt/brother/Printers/mfcj5720dw/lpd $out/opt/brother/Printers/mfcj5720dw/lpd
        ln -s ${ mfcj5720dw-lpr }/opt/brother/Printers/mfcj5720dw/inf $out/opt/brother/Printers/mfcj5720dw/inf

        mkdir -p $out/share/cups/model/Brother/
        ln -s $out/${ wrapperDir }/brother_${ model }_printer_en.ppd $out/share/cups/model/Brother/

        mkdir -p $out/lib/cups/filter/
        ln -s "$out/${ wrapperDir }/brother_lpdwrapper_${ model }" "$out/lib/cups/filter/"
      '';

      meta = with lib; {
        homepage = "https://www.brother.com/";
        description = "Brother MFC-J3930DW CUPS wrapper driver";
        license = licenses.gpl2Only;
        platforms = platforms.linux;
        downloadPage = "https://support.brother.com/g/b/downloadlist.aspx?c=us&lang=en&prod=${ model }_all&os=128&autolayerclose=1";
        # maintainers = with maintainers; [ svavs ];
      };
    }