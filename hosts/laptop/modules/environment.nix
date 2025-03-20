{
  pkgs,
  ...
}: {
  programs.dconf.enable = true;

  environment = {
    gnome.excludePackages = with pkgs; [
      atomix # puzzle game
      cheese # webcam tool
      epiphany # web browser
      evince # document viewer
      geary # email reader
      gedit # text editor
      gnome-characters
      gnome-music
      gnome-photos
      gnome-terminal
      gnome-tour
      hitori # sudoku game
      iagno # go game
      tali # poker game
      totem # video player
      gnome-console
      xterm
    ];

    systemPackages = with pkgs; [
      gnomeExtensions.tactile
      gnomeExtensions.arcmenu
      gnomeExtensions.space-bar
      dconf2nix
    ];
  };

  services = {
    xserver = {
      enable = true;
      desktopManager.gnome.enable = true;

      displayManager.gdm = {
        enable = true;
        wayland = true;
      };
    };
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    withUWSM = true;
  };
}
