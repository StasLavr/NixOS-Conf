
{ inputs, config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "lavr";
  home.homeDirectory = "/home/lavr";
  home.stateVersion = "24.05";

  # GTK #
  gtk = {
    enable = true;
    iconTheme.name = "Tokyonight-Dark";
    font.name = "JetBrainsMono Nerd Font 9";
    theme = {
      package = pkgs.tokyonight-gtk-theme;
      name = "Tokyonight-Storm-BL-LB";
      };
 };
 # Let Home Manager install and manage itself.``
  programs.home-manager.enable = true;
  imports = [
    inputs.ags.homeManagerModules.default
    ./home/wm/hypr
    ./home/program/neovim
    ./home/wm/waybar
    ./home/wm/kitty
    ./home/wm/dunst
    ./home/wm/wlogout
    ./home/wm/nwg-drawer
    ./home/wm/rofi
  ];
}
