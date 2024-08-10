{ inputs, config, pkgs, ... }:
{
  # Xserver #
  services.xserver.enable = true;
  services.xserver.excludePackages = with pkgs; [
   xterm
  ];
  services.gvfs.enable = true;
  services.udisks2.enable = true;
  services.xserver.desktopManager.plasma6.enable = true;
  programs.dconf.enable = true;
  hardware.opengl.driSupport32Bit = true;
  hardware.opengl.driSupport = true;
  
  # xdg #
  xdg.portal.enable = true;
  
  # Layout #
  services.xserver = {
    layout = "us,ru";
    xkbOptions = "grp:win_space_toggle";
  };
}
