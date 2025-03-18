{
  pkgs,
  inputs,
  user,
  stateVersion,
  ...
}: {
  imports = [
    ./modules
    inputs.nvf.homeManagerModules.default
  ];

  home = {
    username = user;
    homeDirectory = "/home/onat";
    stateVersion = stateVersion;

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
