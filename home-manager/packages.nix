{ 
  pkgs,
  inputs,
  system,
  ... 
}: {
  imports = [
    inputs.nvf.homeManagerModules.default
  ];

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    brightnessctl

    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

    bat
    btop
    fzf
    pywal
    ripgrep
    tree
    wl-clipboard
    yazi
    zoxide

    dunst
    hyprshot
    hyprsunset
    imv
    mpv
    pavucontrol

    vscode

    brave
    inputs.zen-browser.packages."${system}".default

    bitwarden-desktop
    discord
    obs-studio
    obsidian
  ];
}
