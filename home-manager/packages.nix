{ 
  config,
  pkgs,
  inputs,
  system,
  ... 
}: {
  nixpkgs.config.allowUnfree = true;

  imports = [
    inputs.nvf.homeManagerModules.default
  ];

  home.packages = with pkgs; [
    tor-browser

    brightnessctl

    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    btop
    fzf
    pywal
    pywalfox-native
    ripgrep
    tree
    wl-clipboard
    yazi
    zoxide

    dunst
    hyprsunset
    hyprshot
    imv
    mpv
    pavucontrol
    rofi

    vscode

    brave
    inputs.zen-browser.packages."${system}".twilight

    bitwarden-desktop
    discord
    obs-studio
    obsidian
    spotify
    teams-for-linux
  ];
}
