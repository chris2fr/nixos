{
  config,
  pkgs,
  libs,
  vars,
  ...
}:
let
in
{
  virtualisation = {
    libvertd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
      };
    };
  };
  users.users.mannchri = {
    extraGroups = [ "libvirtd" ];
  };
  networking.firewall.trustedInterfaces = [ "virbr0" ];
}
