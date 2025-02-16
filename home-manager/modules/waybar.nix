{
  programs.waybar = {
    enable = true;

    settings = [
      {
	      position = "bottom";
        layer = "top";
        height = 24;
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
          format-wifi = "{icon}";

          format-icons = [
            "󰤯"
            "󰤟"
            "󰤢"
            "󰤥"
            "󰤨"
          ];

	        format-disconnected = "󰤮";
          interval = 5;
	        tooltip = true;
          tooltip-format = "{ifname}:{ipaddr}/{cidr} {essid} ({signalStrength}%)";
	      };

	      cpu = {
	        format = "";
	        tooltip = true;
          tooltip-formmat = "{usage}%";
	      };

	      memory = {
	        format = "";
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
	        format-muted = "";
          tooltip-format = "{volume}%";

	        format-icons = [
	          "" 
	          "" 
	          ""
          ];

	        on-click = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
	        tooltip = true;
	      };

        battery = {
	        states = {
	          good = 85;
	          warning = 40;
	          critical = 25;
	        };

	        format = "{icon}";
	        format-charging = "󰚥";
          tooltip-format = "{capacity}% {time}";

	        format-icons = [
	          ""
	          ""
	          ""
	          ""
	          ""
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
	        format = "{icon}";

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
        font-weight: bold;
      }

      window#waybar {
        background-color: #1d2021;
        color: #928374;
      }

      #cpu,
      #memory,
      #temperature,
      #pulseaudio,
      #network,
      #battery,
      #clock,
      #custom-power {
        margin: 0 10px;
        padding: 0.5px;
      }

      #custom-power {
        margin: 0 18px 0 10px;
      }

      #workspaces button {
        color: #928374;
        padding: 0.5px;
        margin: 0 10px;
      }

      #workspaces button.active {
        color: #ebdbb2;
      }

      #battery.critical,
      #network.disabled, 
      #network.disconnected,
      #pulseaudio.muted,
      #temperature.critical {
        color: #cc241d;
      }

      #battery.charging,
      #battery.warning {
        color: #d65d0e;
      }
    '';
  };
}
