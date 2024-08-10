{ config, pkgs, ... }:
{
  # System Apps #
  environment.systemPackages = with pkgs; [
    # CUI #
    wget
    git
    vim
    btop
    home-manager
    pfetch
    fastfetch
    unzip
    python3
    nodejs
    nh
    nix-output-monitor
    nvd
    lutgen
    docker-compose
    # GUI Apps
    # IDE #
    vscode
    sqlitebrowser
    # Vitral #
    qemu
    virt-manager
    
    # Programs #
    telegram-desktop
    firefox
    mangohud
    glib
    goverlay
    libreoffice
    heroic
    gimp
    keepassxc
    upscayl
    qbittorrent
    thunderbird
    prismlauncher
    
    # Libs & Order
    mangohud
    glib
    jdk8
    jdk17
    ffmpeg
    gnome3.adwaita-icon-theme
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtquickcontrols2
    # Cell Packags #
    # (callPackage ../pkgs/sddm-theme/default.nix { }) 
  ];
}
