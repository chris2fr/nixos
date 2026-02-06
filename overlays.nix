# overlays.nix
# This module defines an overlay to add packages from nixpkgs-unstable.
{inputs, ...}: {
  nixpkgs.overlays = [(final: prev: {
    mfcj5720dw-cupswrapper = prev.callPackage ./brother/mfcj5720dw-cupswrapper.nix { };
    mfcj5720dw-lpr = prev.pkgsi686Linux.callPackage ./brother/mfcj5720dw-lpr.nix { };
  })
  ];
}