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
    brightnessctl

    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland

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
    rofi

    vscode

    brave
    inputs.zen-browser.packages."${system}".default

    bitwarden-desktop
    discord
    obs-studio
    obsidian
  ];
}
