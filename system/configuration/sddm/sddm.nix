{ inputs, config, pkgs, lib, ... }:
let
  background-package = pkgs.stdenvNoCC.mkDerivation {
    name = "background-image";
    src = ./.;
    dontUnpack = true;
    installPhase = ''
      cp $src/wall.png $out
    '';
  };
in
{
  #services.xserver.enable = true;
  services.displayManager.sddm = {
    enable = lib.mkDefault true;
    theme = "breeze";
  };

  environment.systemPackages = [
    (
      pkgs.writeTextDir "share/sddm/themes/breeze/theme.conf.user" ''
        [General]
        background = ${background-package}
      ''
    )
  ];
}
