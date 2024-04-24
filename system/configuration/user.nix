{ inputs, config, pkgs, ... }:
{
   # Zsh Shell #
  programs.zsh.enable = true;  
  programs.zsh = {
    oh-my-zsh = {
    enable = true;
    plugins = [ "git" ];
    theme = "awesomepanda";
  };
};
  # User #
  users.defaultUserShell = pkgs.zsh;
  users.users.lavr = {
    description = "Lavr";
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
    ];
  };
}