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
	system-config-printer
	dotfiles
	freeplane
	filezilla
	fontforge
	gnucash
	gsmartcontrol
	handbrake
	zoom-us
	isoimagewriter
	librecad
	meld
	minder
	simple-scan
	obs-studio
	mysql-workbench
	ocrfeeder
	ocrmypdf
	paperwork
	gnome-nettool
	pdfarranger
	rawtherapee
	remmina
	deja-dup
	solaar
	sweethome3d.application
	sweethome3d.textures-editor
	sweethome3d.furniture-editor
	super-productivity
	texworks
	evince
	font-manager
	tigervnc
	vym
	zulip
	zettlr
	zotero
	dbeaver-bin
	gcolor3
	discord
	diffpdf
    # ventoy # insecure
    libertinus
    inter
    dejavu_fonts
    inconsolata
    testdisk-qt
	vscode-extensions.bbenoist.nix
    syncthing
	nixfmt
	# Gnome
	apostrophe
	share-preview
	impression
	sysprof
	bustle
	blanket
	authenticator
	audio-sharing
	amberol
	collision
	fragments
	eyedropper
	emblem
	eartag
	dialect
	decoder
	curtail
	# constrict # Gnome app absent from Nix ?
	commit
	gaphor
	identity
	keypunch
	lorem
	mousai
	newsflash
	gnome-obfuscate
	paper-clip
	pika-backup
	gnome-podcasts
	polari
	resources
	shortwave
	switcheroo
	tangram
	textpieces
	tuba
	video-trimmer
	webfont-bundler
	wike
	kdiskmark
	
  ];
  #   services.fprintd.enable = true;
  # # If simply enabling fprintd is not enough, try enabling fprintd.tod...
  # services.fprintd.tod.enable = true;
  # # ...and use one of the next four drivers
  # services.fprintd.tod.driver = pkgs.libfprint-2-tod1-goodix; # Goodix driver module
  systemd.settings.Manager.DefaultLimitNOFILE="4096"; 
}
