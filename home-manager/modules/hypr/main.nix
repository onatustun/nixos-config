{
  wayland.windowManager.hyprland = {
    enable = true;

    systemd = {
      enable = true;

      variables = [ 
        "--all"
      ];
    };

    settings = {
      env = [
	      "QT_QPA_PLATFORM, wayland"
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
      ];

      monitor = "eDP-1, 2256x1504@60, 0x0, 1.175677";

      "$terminal" = "ghostty";
      "$menu" = "tofi-drun --drun-launch=true";
      "$fileManager" = "$terminal -e sh -c yazi";

      cursor.no_hardware_cursors = "true";
      input.kb_layout = "us";
      gestures.workspace_swipe = "false";

      windowrulev2 = [
        "suppressevent maximize, class:.*"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];
    };
  };
}
