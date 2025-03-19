{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./modules
    inputs.nvf.homeManagerModules.default
  ];

  home = {
    username = "onat";
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

      obsidian
    ];
  };

  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
}
