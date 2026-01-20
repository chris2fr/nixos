{
  config,
  pkgs,
  lib,
  vars,
  ...
}: let
in {
  imports = [
    ./packages/vim.nix
    ./packages/common.nix
    ./packages/desktop.nix
  ];
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # homarr
    nixos-container
    # pocketbase
    nftables
    net-tools

    ghost-cli

    htop
    pnpm
    bottom
    coreutils
    findutils # locate
    jq
    killall
    mosh
    procs
    tree
    unzip
    dust # dust
    ripgrep # rg
    sd # sed alternative
    fx # pour json
    mkcert
    httpie
    nil # nix
    shellcheck
    shfmt
    statix

    pciutils
    usbutils
    testdisk
    rclone

    hwinfo
    safecopy
    hw-probe # Nice to have ?
    hwdata # Nice to have ?
    
    hdparm
    gdu
    dysk
    fio

    foomatic-db-ppds-withNonfreeDb
     # pkgs.gutenprint # Drivers for many different printers from many different vendors.
        pkgs.gutenprintBin # Additional, binary-only drivers for some printers.
      #   # pkgs.hplip # Drivers for HP printers.
      #   pkgs.hplipWithPlugin # Drivers for HP printers, with the proprietary plugin. Use NIXPKGS_ALLOW_UNFREE=1 nix-shell -p hplipWithPlugin --run 'sudo -E hp-setup' to add the printer, regular CUPS UI doesn't seem to work.
      #   # pkgs.postscript-lexmark # Postscript drivers for Lexmark
      #   # pkgs.samsung-unified-linux-driver # Proprietary Samsung Drivers
      #   # pkgs.splix # Drivers for printers supporting SPL (Samsung Printer Language).
      #   pkgs.brlaser # Drivers for some Brother printers
        pkgs.brgenml1lpr
      #   # and
        pkgs.brgenml1cupswrapper # Generic drivers for more Brother printers [1]
      #   # pkgs.cnijfilter2 # Drivers for some Canon Pixma devices (Proprietary driver)
      #   pkgs.epson-escpr2 # Drivers for Epson AirPrint devices
      #   pkgs.epson-escpr # Drivers for some other Epson devices
      #   #####
      #   # pkgs.mfcl5750dw
      #   # pkgs.mfcj6510dw-cupswrapper
      #   # pkgs.mfcj6510dwlpr
      #   # pkgs.mfcj470dwlpr
      #   # pkgs.mfcj470dw-cupswrapper
  ];
}
