{
  config,
  pkgs,
  lib,
  vars,
  ...
}:
let
in
{
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
    foomatic-db
    foomatic-db-ppds-withNonfreeDb
    # gutenprint # Drivers for many different printers from many different vendors.
    gutenprintBin # Additional, binary-only drivers for some printers.
    #   # hplip # Drivers for HP printers.
    #   hplipWithPlugin # Drivers for HP printers, with the proprietary plugin. Use NIXPKGS_ALLOW_UNFREE=1 nix-shell -p hplipWithPlugin --run 'sudo -E hp-setup' to add the printer, regular CUPS UI doesn't seem to work.
    #   # postscript-lexmark # Postscript drivers for Lexmark
    #   # samsung-unified-linux-driver # Proprietary Samsung Drivers
    #   # splix # Drivers for printers supporting SPL (Samsung Printer Language).
    #   brlaser # Drivers for some Brother printers
    brgenml1lpr
    #   # and
    brgenml1cupswrapper # Generic drivers for more Brother printers [1]
    #   # cnijfilter2 # Drivers for some Canon Pixma devices (Proprietary driver)
    #   epson-escpr2 # Drivers for Epson AirPrint devices
    #   epson-escpr # Drivers for some other Epson devices
    #   #####
    #   # mfcl5750dw
    #   # mfcj6510dw-cupswrapper
    #   # mfcj6510dwlpr
    #   # mfcj470dwlpr
    #   # mfcj470dw-cupswrapper

    dpkg
    openssl
    pcre
    libp11
    autoPatchelfHook
    libsForQt5.full
    cups
    pcsclite
  ];
}
