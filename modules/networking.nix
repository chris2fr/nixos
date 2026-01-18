{
  pkgs,
  lib,
  vars,
  ...
}:
{
  networking = {
    hostName = "mannchri-lenl14g3";
    hosts = {
      "192.168.1.100" = ["rosesdmzt330"];
      "192.168.1.101" = ["roseslant330"];
      "192.168.1.33" = ["roseslant330idrac"];
      "192.168.1.20" = ["roseslanrax20"];
      "192.168.1.72" = ["roseslant720idrac"];
      "192.168.1.172" = ["roseslant720"];
    };
  };
}
