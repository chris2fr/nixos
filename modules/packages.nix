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
    ./packages/dev.nix
    ./packages/virt.nix
  ];
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    #   # cnijfilter2 # Drivers for some Canon Pixma devices (Proprietary driver)
    #   # hplip # Drivers for HP printers.
    #   # mfcj470dw-cupswrapper
    #   # mfcj470dwlpr
    #   # mfcj6510dw-cupswrapper
    #   # mfcj6510dwlpr
    #   # mfcl5750dw
    #   # postscript-lexmark # Postscript drivers for Lexmark
    #   # samsung-unified-linux-driver # Proprietary Samsung Drivers
    #   # splix # Drivers for printers supporting SPL (Samsung Printer Language).
    #   #####
    #   brlaser # Drivers for some Brother printers
    #   epson-escpr # Drivers for some other Epson devices
    #   epson-escpr2 # Drivers for Epson AirPrint devices
    #   hplipWithPlugin # Drivers for HP printers, with the proprietary plugin. Use NIXPKGS_ALLOW_UNFREE=1 nix-shell -p hplipWithPlugin --run 'sudo -E hp-setup' to add the printer, regular CUPS UI doesn't seem to work.
    # gutenprint # Drivers for many different printers from many different vendors.
    # homarr
    # libsForQt5
    # pocketbase
    autoPatchelfHook
    bottom
    brgenml1cupswrapper # Generic drivers for more Brother printers [1]
    brgenml1lpr
    coreutils
    cups
    dpkg
    dust # dust
    dysk
    findutils # locate
    fio
    foomatic-db
    foomatic-db-ppds-withNonfreeDb
    fx # pour json
    gdu
    ghost-cli
    gutenprintBin # Additional, binary-only drivers for some printers.
    hdparm
    htop
    httpie
    hw-probe # Nice to have ?
    hwdata # Nice to have ?
    hwinfo
    jq
    killall
    libp11
    mkcert
    mosh
    net-tools
    nftables
    nil # nix
    nixos-container
    openssl
    pciutils
    pcre
    pnpm
    procs
    rclone
    ripgrep # rg
    safecopy
    sd # sed alternative
    shellcheck
    shfmt
    statix
    testdisk
    tree
    unzip
    usbutils
  ];
}
