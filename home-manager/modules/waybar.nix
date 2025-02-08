{
  programs.waybar = {
    enable = true;

    settings = [
      {
        height = 24;
	      position = "bottom";
        layer = "top";
	      reload_style_on_change = true;

	      modules-left = [
	        "hyprland/workspaces"
	      ];

	      modules-right = [
	        "cpu"
	        "memory"
	        "temperature"
	        "pulseaudio"
	        "network"
	        "battery"
	        "clock"
	        "custom/power"
	      ];

	      "hyprland/workspaces" = {
	        format = "{icon}";
	        tooltip = false;
	      };

        network = {
          format-wifi = "{icon} ";
          format-icons = [
            "󰣾"
            "󰣴"
            "󰣶"
            "󰣸"
            "󰣺"
          ];
	        format-disconnected = "󰣼 ";
          interval = 5;
	        tooltip = true;
          tooltip-format = "{ifname}:{ipaddr}/{cidr} {essid} ({signalStrength}%)";
	      };

	      cpu = {
	        format = "󰻠";
	        tooltip = true;
          tooltip-formmat = "{usage}%";
	      };

	      memory = {
	        format = "󰍛";
	        tooltip = true;
          tooltip-format = "{percentage}%";
	      };

        temperature = {
	        critical-threshold = 80;
	        format = "{icon}";

	        format-icons = [
            "" 
            "" 
	          ""
            ""
	          ""
	        ];

          tooltip = true;
          tooltip-format = "{temperatureC}°C";
        };

	      pulseaudio = {
	        format = "{icon}";
	        format-muted = "󰸈";
          tooltip-format = "{volume}%";

	        format-icons = [
	          "󰕿" 
	          "󰖀" 
	          "󰕾"
          ];

	        on-click = "pavucontrol";
	        tooltip = true;
	      };

        battery = {
	        states = {
	          good = 85;
	          warning = 30;
	          critical = 15;
	        };

	        format = "{icon} {capacity}%";
	        format-charging = "󰚥 {capacity}% {time}";
          tooltip-format = "{time}";

	        format-icons = [
	          "󰂎"
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

	        tooltip = true;
	      };

        clock = {
	        format = "{:%H:%M}";
	        interval = 1;
          tooltip = true;
          tooltip-format = "{:%a %d/%m}";
	      };

        "custom/power" = {
	        format = "{icon} ";
          format-icons = [
	          "󰐥"
          ];
	        tooltip = false;
	        on-click = "wlogout --protocol layer-shell";
	      };
      }
    ];
    
    style = ''
      * {
        font-family:JetBrainsMono Nerd Font;
        font-size:12px;
      }

      window#waybar {
        color: #665c54;
        background-color: #282828;
      }

      #window {
        font-weight: bold;
      }

      #workspaces button {
        padding: 0 2px;
        margin: 0px;
        background: transparent;
        font-weight: bold;
        color: #504945;
      }

      #workspaces button.active {
        color: #d5c4a1;
      }

      #hyprland-workspaces,
      #network,
      #cpu,
      #memory,
      #temperature,
      #wireplumber,
      #battery,
      #clock,
      #custom-power {
        padding: 0 3px;
        margin: 0 2px;
      }

      modules-left > widget:first-child > #workspaces {
        margin-left: 0;
      }

      .modules-right > widget:last-child > #workspaces {
        margin-right: 0;
      }
    '';
  };
}
