{
  programs.waybar = {
    enable = true;
    systemd.enable = false;
    style = import ./style.nix;

    settings = [{
      layer = "top";
      position = "bottom";
      fixed-center = true;
      height = 28;
      margin = "3 60 3 60";
      mode = "dock";
      start_hidden = false;
      reload_style_on_change = true;
      spacing = 0;

      modules-left = [ "group/leftWrapper" ];
      modules-right = [ "group/rightWrapper" ];

      "group/leftWrapper" = {
        orientation = "horizontal";
        modules = [ "hyprland/workspaces" ];
      };

      "group/rightWrapper" = {
        orientation = "horizontal";
        modules = [
          "wireplumber"
          "network"
          "battery"
          "clock"
        ];
      };
      
      "hyprland/workspaces" = {
        tooltip = false;
        format = "{icon}";
      };

      tray = {
        icon-size = 18;
        spacing = 4;
        padding = "0 2px 0 2px";
        border-radius = 0;
      };

      clock = {
        interval = 1;
        tooltip = true;
        tooltip-format = "<big>{:%A, %d.%B %Y }</big>\n<tt><small>{calendar}</small></tt>";
        format = "{:%H:%M}";
      };

      network = {
        interval = 5;
        tooltip = true;
        tooltip-format = "{ifname}:{ipaddr}/{cidr} {essid} ({signalStrength}%)";
        format-wifi = "{icon}";
        format-disconnected = "󰤮";

        format-icons = [
          "󰤯 "
          "󰤟 "
          "󰤢 "
          "󰤥 "
          "󰤨 "
        ];
      };

      wireplumber = {
        on-click = "pavucontrol";
        tooltip = true;
        tooltip-format = "{volume}%";
        format = "{icon}";
        format-muted = "";

        format-icons = [
          "" 
          "" 
          ""
        ];
      };

      battery = {
        states = {
          warning = 45;
          critical = 25;
        };

        tooltip = true;
        tooltip-format = "{capacity}% {time}";
        format = "{icon}";
        format-charging = "󰂄";

        format-icons = [
          "󰁺"
          "󰁻"
          "󰁼"
          "󰁽"
          "󰁾"
          "󰁿"
          "󰂀"
          "󰂁"
          "󰂂"
          "󰁹"
        ];
      };
    }];
  };
}
