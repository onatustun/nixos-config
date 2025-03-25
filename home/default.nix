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
      obsidian
    ];
  };

  programs = {
    home-manager.enable = true;
    zoxide.enable = true;
  };

  nixpkgs.config.allowUnfree = true;
  systemd.user.startServices = "sd-switch";
}
