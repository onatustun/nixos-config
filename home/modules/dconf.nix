{ 
  lib,
  pkgs,
  ... 
}: with lib.hm.gvariant; {
  home.activation.extraDconf = lib.mkAfter ''
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/cycle-group "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/cycle-group-backward "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/cycle-panels "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/cycle-panels-backward "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/cycle-windows "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/cycle-windows-backward "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/move-to-monitor-down "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/move-to-monitor-left "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/move-to-monitor-right "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/move-to-monitor-up "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-last "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-left "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-right "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/switch-applications "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/switch-applications-backward "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/switch-group "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/switch-group-backward "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/switch-panels "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/switch-panels-backward "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-last "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-left "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-right "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/settings-daemon/plugins/media-keys/help "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/settings-daemon/plugins/media-keys/magnifier "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/settings-daemon/plugins/media-keys/magnifier-zoom-in "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/settings-daemon/plugins/media-keys/magnifier-zoom-out "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/settings-daemon/plugins/media-keys/screenreader "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/space-bar/shortcuts/activate-empty-key "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/space-bar/shortcuts/activate-previous-key "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/space-bar/shortcuts/move-workspace-left "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/space-bar/shortcuts/move-workspace-right "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/space-bar/shortcuts/open-menu "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-1 "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-10 "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-2 "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-3 "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-4 "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-5 "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-6 "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-7 "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-8 "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/keybindings/switch-to-application-9 "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/keybindings/toggle-quick-settings "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-gap-size-decrease "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-gap-size-increase "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-snap-center "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-snap-one-third-left "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-snap-one-third-right "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-snap-two-third-left "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-snap-two-third-right "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-toggle-always-float "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-toggle-float "@as []"    
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-resize-right-increase "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-resize-right-decrease "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-resize-left-decrease "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-resize-left-increase "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-resize-top-increase "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-resize-top-decrease "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-resize-bottom-decrease "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-resize-bottom-increase "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-snap-down "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-snap-last-active "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-snap-left "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-snap-right "@as []"
    ${pkgs.dconf}/bin/dconf write /org/gnome/shell/extensions/forge/keybindings/window-snap-up "@as []"

  '';

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      clock-show-weekday = true;
      color-scheme = "prefer-dark";
      enable-hot-corners = false;
    };

    "org/gnome/shell/extensions/space-bar/shortcuts" = {
      enable-activate-workspace-shortcuts = true;
      enable-move-to-workspace-shortcuts = true;
    };

    "org/gnome/desktop/peripherals/mouse" = {
      accel-profile = "flat";
      double-click = 500;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/wm/keybindings" = {
      move-to-workspace-1 =  [ "<Super><Shift>1" ];
      move-to-workspace-10 = [ "<Super><Shift>0" ];
      move-to-workspace-2 = [ "<Super><Shift>2" ];
      move-to-workspace-3 = [ "<Super><Shift>3" ];
      move-to-workspace-4 = [ "<Super><Shift>4" ];
      move-to-workspace-5 = [ "<Super><Shift>5" ];
      move-to-workspace-6 = [ "<Super><Shift>6" ];
      move-to-workspace-7 = [ "<Super><Shift>7" ];
      move-to-workspace-8 = [ "<Super><Shift>8" ];
      move-to-workspace-9 = [ "<Super><Shift>9" ];

      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-10 = [ "<Super>0" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
      switch-to-workspace-5 = [ "<Super>5" ];
      switch-to-workspace-6 = [ "<Super>6" ];
      switch-to-workspace-7 = [ "<Super>7" ];
      switch-to-workspace-8 = [ "<Super>8" ];
      switch-to-workspace-9 = [ "<Super>9" ];

      close = ["<Super>c"];
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      screensaver = ["<Super>m"];
      custom-keybinds = true;
      custom-keybindings = ["/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0".binding = "<Super>q";
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0".command = "ghostty";
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0".name = "terminal";

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybinds".custom0 = true;

    "org/gnome/mutter" = {
      edge-tiling = false;
      dynamic-workspaces = false;
    };

    "org/gnome/settings-daemon/plugins/power" = {
      power-button-action = "interactive";
    };

    "org/gnome/shell" = {
      disable-user-extensions = false;
      disabled-extensions = [];
      enabled-extensions = with pkgs.gnomeExtensions; [ 
        arcmenu.extensionUuid
        dynamic-panel.extensionUuid
        forge.extensionUuid
        space-bar.extensionUuid
        vitals.extensionUuid
        blur-my-shell.extensionUuid
      ];
      last-selected-power-profile = "power-saver";
    };

    "org/gnome/shell/extensions/arcmenu" = {
      arcmenu-hotkey = [ "<Super>r" ];
      dash-to-panel-standalone = false;
      highlight-search-result-terms = false;
      menu-layout = "Runner";
      multi-monitor = false;
      override-menu-theme = false;
      prefs-visible-page = 0;
      runner-font-size = 14;
      runner-menu-height = 445;
      runner-menu-width = 545;
      runner-position = "Centered";
      runner-search-display-style = "List";
      runner-show-frequent-apps = true;
      search-entry-border-radius = mkTuple [ true 25 ];
      search-provider-open-windows = false;
      show-category-sub-menus = false;
      show-search-result-details = false;
    };

    "org/gnome/shell/extensions/forge" = {
      move-pointer-focus-enabled = true;
      window-gap-size = mkUint32 0;
      window-gap-size-increment = mkUint32 0;
      auto-exit-tabbed = false;
      float-always-on-top-enabled = false;
    };

    "org/gnome/shell/extensions/forge/keybindings" = {
      window-focus-down = ["<Super>j"];
      window-focus-left = ["<Super>h"];
      window-focus-right = ["<Super>l"];
      window-focus-up = ["<Super>k"];

      window-move-down = ["<Shift><Super>j"];
      window-move-left = ["<Shift><Super>h"];
      window-move-right = ["<Shift><Super>l"];
      window-move-up = ["<Shift><Super>k"];

      window-resize-bottom-increase = ["<Super>Down"];
      window-resize-left-increase = ["<Super>Left"];
      window-resize-right-increase = ["<Super>Right"];
      window-resize-up-increase = ["<Super>Up"];
    };


    "org/gnome/shell/extensions/space-bar/behavior" = {
      always-show-numbers = false;
      enable-custom-label = false;
      position-index = 1;
      show-empty-workspaces = false;
      smart-workspace-names = false;
      system-workspace-indicator = false;
    };
 };
}
