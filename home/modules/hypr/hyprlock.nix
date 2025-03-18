{
  programs.hyprlock = {
    enable = true;

    settings = {
      general = {
        disable_loading_bar = true;
        grace = 10;
        hide_cursor = true;
        no_fade_in = true;
      };

      background = [{
        monitor = "";
        background-color = "black";
      }];

      input-field = [{
        monitor = ""; 
        size = "300, 60";
        outline_thickness = 4;
        dots_rounding = -1;
        dots-size = 0.4;
        placeholder_text = "";
        fade_on_empty = false;
        position = "0, -10";
        halign = "center";
        valign = "center";
      }];
    };
  };
}
