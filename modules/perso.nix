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
  # Remap CAPS lock to ESC
  services.udev.extraHwdb = ''
    evdev:atkbd:*
      KEYBOARD_KEY_3a=esc
  '';
}
