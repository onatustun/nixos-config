{
  programs.waybar = {
    enable = true;

    settings = [
      {
        height = 26;
	      position = "bottom";
        layer = "top";
	      reload_style_on_change = true;

	      modules-left = [
	        "hyprland/workspaces"
	        "network"
	      ];

	      modules-right = [
	        "cpu"
	        "memory"
	        "temperature"
	        "pulseaudio"
	        "battery"
	        "clock"
	        "custom/power"
	      ];

	      "hyprland/workspaces" = {
	        format = "[{icon}]";
	        tooltip = false;
	      };

        network = {
	        format-wifi = "[  {ifname}:{ipaddr}/{cidr} {essid} ({signalStrength}%)]";
	        format-disconnected = "[Disconnected]";
          interval = 5;
	        tooltip = false;
	      };

	      cpu = {
	        format = "[ {usage}%]";
	        tooltip = false;
	      };

	      memory = {
	        format = "[ {used:0.1f}G/{total:0.1f}G]";
	        tooltip = false;
	      };

	      temperature = {
	        critical-threshold = 80;
	        format = "[{icon} {temperatureC}°C]";

	        format-icons = [
            "" 
            "" 
	          ""
            ""
	          ""
	        ];

	        tooltip = false;
	      };

	      pulseaudio = {
	        format = "[{icon} {volume}%]";
	        format-muted = "[MUTED]";

	        format-icons = {
	          "default" = [
	            "" 
	            "" 
	            ""
	          ];
	        };

	        on-click = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
	        tooltip = false;
	      };

        battery = {
	        states = {
	          good = 85;
	          warning = 30;
	          critical = 15;
	        };

	        format = "[{icon} {capacity}% {time}]";
	        format-charging = "[ {capacity}% {time}]";

	        format-icons = [
	          ""
	          ""
	          ""
	          ""
	          ""
	        ];

	        tooltip = false;
	      };

        clock = {
	        format = "[ {:%H:%M %a %d/%m}]";
	        interval = 1;
          tooltip = false;
	      };

        "custom/power" = {
	        format = "[󰐦]";
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
      #pulseaudio,
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
