{
  pkgs,
  ...
}: {
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
      gnomeExtensions.forge
      gnomeExtensions.arcmenu
      gnomeExtensions.dynamic-panel
      gnomeExtensions.vitals
      gnomeExtensions.space-bar
      gnomeExtensions.blur-my-shell
      dconf2nix
      dconf-editor
      xdg-desktop-portal-gnome
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
