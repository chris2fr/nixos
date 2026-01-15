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


  ];
}
