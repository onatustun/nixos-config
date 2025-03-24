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
      gnomeExtensions.appindicator
      gnomeExtensions.arcmenu
      gnomeExtensions.paperwm
      gnomeExtensions.blur-my-shell
      gnomeExtensions.gsconnect
      gnomeExtensions.just-perfection
      gnomeExtensions.space-bar
      gnomeExtensions.bluetooth-battery
      gnomeExtensions.vitals
      gnomeExtensions.dash-to-panel
      dconf2nix
      dconf-editor
      xdg-desktop-portal-gnome
    ];
  };

  services = {
    xserver = {
      enable = true;
      desktopManager.gnome = {
        enable = true;
        extraGSettingsOverridePackages = [ pkgs.mutter ];
        extraGSettingsOverrides = ''
          [org.gnome.mutter]
          experimental-features=['scale-monitor-framebuffer']
        '';
      };

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
