{ inputs, config, pkgs, ... }:
{
  # Virtal #
  virtualisation.libvirtd.enable = true;
  # OpenSSH #
  services.openssh.enable = true;
  # Steam #
  nixpkgs.config.allowUnfree = true;
  programs.steam = {
    enable = true;
  };
  system.stateVersion = "24.05";
}