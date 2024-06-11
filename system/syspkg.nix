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
    brightnessctl
    libnotify
    nodejs
    ranger
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
    
    # WM #
    rofi-wayland
    firefox
    wlogout
    nwg-drawer
    grim
    mpv
    networkmanagerapplet
    waypaper
    swaybg
    waybar
    qt5ct
    kitty
    
    # Programs #
    telegram-desktop
    mangohud
    glib
    heroic
    goverlay
    libreoffice
    kdenlive
    gimp
    gwenview
    ark
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
   # Thunar #
   programs.thunar.enable = true;
   services.tumbler.enable = true;
   programs.thunar.plugins = with pkgs.xfce; [
   thunar-archive-plugin
   thunar-volman
];
}
