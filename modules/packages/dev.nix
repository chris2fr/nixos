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
  ];
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
