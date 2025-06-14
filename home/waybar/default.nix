{
  config,
  isLaptop,
  lib,
  pkgs,
  ...
}: let
  toggleKeyboardScript = pkgs.writeScriptBin "toggle-laptop-keyboard" ''
    #!/${pkgs.runtimeShell}
    CACHE_DIR="''${XDG_CACHE_HOME:-$HOME/.cache}"
    STATE_FILE="$CACHE_DIR/laptop-keyboard-disabled"
    KEYBOARD_NAME="at-translated-set-2-keyboard"

    mkdir -p "$CACHE_DIR"

    if [ "$1" == "--toggle" ]; then
      if [ -f "$STATE_FILE" ]; then
        rm "$STATE_FILE"
        ${pkgs.hyprland}/bin/hyprctl keyword "device[$KEYBOARD_NAME]:enabled" 1
      else
        touch "$STATE_FILE"
        ${pkgs.hyprland}/bin/hyprctl keyword "device[$KEYBOARD_NAME]:enabled" 0
      fi
    fi

    if [ -f "$STATE_FILE" ]; then
      echo '{"text": "disabled", "class": "disabled"}'
    else
      echo '{"text": "enabled", "class": "enabled"}'
    fi
  '';

  icons = import ./icons.nix { inherit
    pkgs
    lib
    config;
  };

  iconsPath = "${icons.waybarIconsDir}";
  in {
  programs.waybar = {
    enable = true;
    systemd.enable = true;

    style = import ./style.nix { inherit
      iconsPath
      config;
    };

    settings = [{
      layer = "top";
      position = "bottom";
      margin = "0 128 8";
      mode = "dock";

      modules-left = [ 
        "hyprland/workspaces" 
        "wlr/taskbar"
      ];

      modules-right = [
        "tray"
      ] ++ (if isLaptop then [
        "custom/keyboard"
      ] else[
      ]) ++ [
        "network"
        "wireplumber"
        "battery"
        "clock"       
      ];

      "hyprland/workspaces" = {
        format = "{icon}";
        tooltip = false;
      };

      "wlr/taskbar" = {
        format = "{icon}";
        icon-size = 16;
        tooltip = true;
        tooltip-format = "{name}";
      };

      tray = {
        icon-size = 16;
        spacing = 4;
      };

       "custom/keyboard" = {
        format = " ";
        tooltip = false;
        on-click = "${toggleKeyboardScript}/bin/toggle-laptop-keyboard --toggle";
        exec = "${toggleKeyboardScript}/bin/toggle-laptop-keyboard";
        return-type = "json";
        interval = 1;
      };
           
      network = {
        interval = 5;
        format = " ";
        format-disabled = "";
        format-disconnected = "";
        format-ethernet = " ";
        on-click = "nm-connection-editor";
        tooltip = true;
        tooltip-format = "{ifname}:{ipaddr}/{cidr} {essid} ({signalStrength}%)";
      };

      wireplumber = {
        format = " ";
        format-muted = "";
        tooltip = true;
        tooltip-format = "{volume}%";
        on-click = "pavucontrol";
      };

      battery = {
        interval = 5;
        format = " ";
        format-time = "{H}h{M}m";
        tooltip = true;
        tooltip-format = "{capacity}% {time}";

        states = {
          full = 100;
          high = 80;
          medium = 60;
          low = 40;
          empty = 20;
        };
      };

      clock = {
        interval = 1;
        format = "{:%H:%M}";
        tooltip = true;
        tooltip-format = "{:%a %d %b}";
      };
    }];
  };
}
