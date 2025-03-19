{
  pkgs,
  ...
}: {
  gtk = {
    enable = true;

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    theme = {
      name = "palenight";
      package = pkgs.palenight-theme;
    };

    cursorTheme = {
      name = "Numix-Cursor";
      package = pkgs.numix-cursor-theme;
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };

    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };

  home.packages = with pkgs.gnomeExtensions; [
    tactile
    blur-my-shell
    arcmenu
  ];

  home.sessionVariables.GTK_THEME = "palenight";

  dconf = {
    enable = true;
    settings = {
      "org/gnome/shell" = {
        disable-user-extensions = false;
        enabled-extensions =  [
          "user-theme@gnome-shell-extensions.gcampax.github.com"
          "tactile@lundal"
          "blur-my-shell@aunetx"
          "arcmenu@arcmenu.com"
        ];
      };
      "org/gnome/desktop/interface".color-scheme = "prefer-dark";
      "org/gnome/shell/extensions/blur-my-shell" = {
        brightness = 0.75;
        noise-amount = 0;
      };
    };
  };
}

