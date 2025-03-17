{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./chromium.nix
    ./fastfetch.nix
    ./ghostty.nix
    ./git.nix
    ./hypr
    ./nvf.nix
    ./oh-my-posh.nix
    ./tmux.nix
    ./tofi.nix
    ./waybar.nix
    ./zsh.nix 
    inputs.nvf.homeManagerModules.default
  ];

  home = {
    usename = "onat";
    homeDirectory = "/home/onat";
    stateVersion = "24.11";

    packages = with pkgs; [
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

      bitwarden-desktop
      discord
      obs-studio
      obsidian
    ];
  };

  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
}
