
{ inputs, config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "lavr";
  home.homeDirectory = "/home/lavr";
  home.stateVersion = "24.05";
 # GTK #
#  gtk = {
#   enable = true;
#    iconTheme.name = "Yaru-blue";
#    font.name = "Roboto 9";
#   theme = {
#      package = pkgs.yaru-theme;
#      name = "Yaru-blue-dark";
#      };
# };
  programs.home-manager.enable = true;
  imports = [
    inputs.ags.homeManagerModules.default
    ./home/program/neovim
  ];
}
