{ config, pkgs, inputs, system, ... }: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    tor-browser

    brightnessctl

    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    font-awesome
    nerd-fonts.jetbrains-mono

    btop
    fzf
    pywal
    pywalfox-native
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

    neovim
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
