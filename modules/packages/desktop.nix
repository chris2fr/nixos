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
  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "anytype"
    ];

  environment.systemPackages = with pkgs; [
    # constrict # Gnome app absent from Nix ?
    # Gnome
    # ventoy # insecure
    # whatsie  # Forget it # Uses qtwebengine
    # altus # WhatsApp client
    amberol
    apache-directory-studio
    apostrophe
    audacity
    audio-sharing
    authenticator
    blanket
    biber
    texlivePackages.biblatex
    texlivePackages.biblatex-enc
    bibtex
    bitwarden-desktop
    bustle
    cmake
    collision
    commit
    curtail
    dbeaver-bin
    decoder
    deja-dup
    dejavu_fonts
    dialect
    diffpdf
    discord
    dotfiles
    eartag
    emblem
    evince
    evolution
    eyedropper
    filezilla
    firefox
    font-manager
    fontforge
    fprintd
    fragments
    freeplane
    gaphor
    gcolor3
    gimp
    gnome-nettool
    gnome-obfuscate
    gnome-podcasts
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.vitals
    gnucash
    gnumake
    google-chrome
    gsmartcontrol
    handbrake
    identity
    impression
    inconsolata
    inkscape-with-extensions
    inter
    isoimagewriter
    jxplorer
    # karere # WhatsApp client 
    kdePackages.kdenlive
    kdiskmark
    keyguard # This is a long build
    keypunch
    libertinus
    librecad
    libreoffice
    lorem
    lxqt.liblxqt
    marktext
    meld
    miktex
    minder
    mousai
    mysql-workbench
    newsflash
    nixfmt
    obs-studio
    ocrfeeder
    ocrmypdf
    pandoc
    paper-clip
    paperwork
    pdfarranger
    pika-backup
    polari
    qownnotes
    rawtherapee
    remmina
    resources
    share-preview
    shortwave
    shotwell
    simple-scan
    solaar
    sqlitebrowser
    super-productivity
    sweethome3d.application
    sweethome3d.furniture-editor
    sweethome3d.textures-editor
    switcheroo
    syncthing
    sysprof
    system-config-printer
    tangram
    testdisk-qt
    texliveFull
    tex-fmt
    texlivePackages.latexindent
    textpieces
    texworks
    tigervnc
    tuba
    ungoogled-chromium
    video-trimmer
    vlc
    vscode
    vscode-extensions.bbenoist.nix
    vscode-with-extensions
    vym
    wasistlos # WhatsApp client 
    webfont-bundler
    whatsapp-chat-exporter
    # whatsapp-electron  # WhatThis iwsApp client 
    wike
    # zapzap # WhatsApp client 
    zettlr
    zoom-us
    zotero
    zulip
  ];
  #   services.fprintd.enable = true;
  # # If simply enabling fprintd is not enough, try enabling fprintd.tod...
  # services.fprintd.tod.enable = true;
  # # ...and use one of the next four drivers
  # services.fprintd.tod.driver = pkgs.libfprint-2-tod1-goodix; # Goodix driver module
  systemd.settings.Manager.DefaultLimitNOFILE = "4096";
}
