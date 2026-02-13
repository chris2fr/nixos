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
  environment.systemPackages = with pkgs; [
    nodejs
    docker
    libvirt
    virt-manager
    qemu
    quickemu
    arping
    iputils
  ];
  virtualisation.docker.enable = true;
  users.users.mannchri.extraGroups = ["docker"];
  services.mysql = {
    enable = true;
    package = pkgs.mariadb;
    ensureDatabases = [ "syncin" ];
    ensureUsers = [
      {
        name = "syncin";
        ensurePermissions = {
          "syncin.*" = "ALL PRIVILEGES";
        };

      }
    ];
    initialDatabases = [
      {
        name = "syncin";
      }
    ];
  };
}
