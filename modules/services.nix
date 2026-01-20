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

  # hardware.printers.ensurePrinters =
  #   [
  #     {
  #      name = "MFC-J5720DW";
  #       location = "Living Room";
  #       description = "Brother MFC-J5720DW";
  #       deviceUri = "ipp://192.168.1.152";
  #       model = "gutenprint.${pkgs.lib.versions.majorMinor (pkgs.lib.getVersion pkgs.gutenprint)}://pcl-g_c/expert";
  #       ppdOptions = {
  #         PageSize = "A4";
  #       };
  #     }
  #   ];

  services = {
    printing = {
      ### https://nixos.wiki/wiki/Printing
      enable = true;
      drivers = [
        # pkgs.gutenprint # Drivers for many different printers from many different vendors.
        pkgs.gutenprintBin # Additional, binary-only drivers for some printers.
        # pkgs.hplip # Drivers for HP printers.
        pkgs.hplipWithPlugin # Drivers for HP printers, with the proprietary plugin. Use NIXPKGS_ALLOW_UNFREE=1 nix-shell -p hplipWithPlugin --run 'sudo -E hp-setup' to add the printer, regular CUPS UI doesn't seem to work.
        # pkgs.postscript-lexmark # Postscript drivers for Lexmark
        # pkgs.samsung-unified-linux-driver # Proprietary Samsung Drivers
        # pkgs.splix # Drivers for printers supporting SPL (Samsung Printer Language).
        pkgs.brlaser # Drivers for some Brother printers
        pkgs.brgenml1lpr
        # and
        pkgs.brgenml1cupswrapper # Generic drivers for more Brother printers [1]
        # pkgs.cnijfilter2 # Drivers for some Canon Pixma devices (Proprietary driver)
        pkgs.epson-escpr2 # Drivers for Epson AirPrint devices
        pkgs.epson-escpr # Drivers for some other Epson devices
        #####
        # pkgs.mfcl5750dw
        # pkgs.mfcj6510dw-cupswrapper
        # pkgs.mfcj6510dwlpr
        # pkgs.mfcj470dwlpr
        # pkgs.mfcj470dw-cupswrapper
        # pkgs.foomatic-db
        # pkgs.foomatic-db-ppds-withNonfreeDb
      ];
    };
    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };
  };
}
