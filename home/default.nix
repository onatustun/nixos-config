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
      xdg-desktop-portal-gtk
      bat
      btop
      fzf
      ripgrep
      tree
      yazi
      zoxide
      obsidian
    ];
  };

  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";
}
