{
  config,
  pkgs,
  lib,
  vars,
  ...
}: let
in {
  environment.systemPackages = with pkgs; [
  	keyguard # This is a long build
  	vscode
  	vscode-with-extensions
  	libreoffice
  	evolution
  	inkscape-with-extensions
  	fprintd
	marktext
	gimp
	kdePackages.kdenlive
	vlc
	shotwell
	jxplorer
	apache-directory-studio
	audacity
	cmake
	gnumake
	sqlitebrowser
  ];
    services.fprintd.enable = true;
  # If simply enabling fprintd is not enough, try enabling fprintd.tod...
  services.fprintd.tod.enable = true;
  # ...and use one of the next four drivers
  services.fprintd.tod.driver = pkgs.libfprint-2-tod1-goodix; # Goodix driver module
  systemd.settings.Manager.DefaultLimitNOFILE="4096"; 
}
