{
  programs.ghostty = {
    enable = true;

    settings = {
      confirm-close-surface = false;
      font-family = "JetBrainsMono Nerd Font";
      font-feature = [ "-liga" "-dlig" "-calt" ];
      font-size = 12;
      gtk-adwaita = false;
      gtk-titlebar = false;
      mouse-hide-while-typing = true;
      shell-integration-features = "no-cursor";
      theme = "GruvboxDark";
      window-decoration = true;
    };
  };
}
