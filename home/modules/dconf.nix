# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/blueman/general" = {
      window-properties = [ 749 930 0 0 ];
    };

    "org/blueman/plugins/autoconnect" = {
      services = [ (mkTuple [ "CE:32:DF:B5:AE:06" "00000000-0000-0000-0000-000000000000" ]) ];
    };

    "org/blueman/plugins/recentconns" = {
      recent-connections = [ {
        adapter = "44:FA:66:08:B8:06";
        address = "40:58:99:11:D1:EF";
        alias = "G435 Bluetooth Gaming Headset";
        icon = "audio-headset";
        name = "Audio and input profiles";
        uuid = "00000000-0000-0000-0000-000000000000";
        time = "1741834569.0895875";
      } {
        adapter = "44:FA:66:08:B8:06";
        address = "EE:98:44:4F:76:34";
        alias = "Cradio";
        icon = "input-keyboard";
        name = "Audio and input profiles";
        uuid = "00000000-0000-0000-0000-000000000000";
        time = "1742351915.438155";
        device = "/org/bluez/hci0/dev_EE_98_44_4F_76_34";
      } ];
    };

    "org/freedesktop/folks" = {
      primary-store = "eds:system-address-book";
    };

    "org/gnome/Console" = {
      last-window-maximised = false;
      last-window-size = mkTuple [ 812 504 ];
    };

    "org/gnome/Contacts" = {
      did-initial-setup = true;
      window-fullscreen = false;
      window-height = 600;
      window-maximized = false;
      window-width = 800;
    };

    "org/gnome/Extensions" = {
      window-height = 734;
      window-maximized = false;
      window-width = 1103;
    };

    "org/gnome/TextEditor" = {
      style-scheme = "stylix";
    };

    "org/gnome/control-center" = {
      last-panel = "keyboard";
      window-state = mkTuple [ 1128 735 false ];
    };

    "org/gnome/desktop/a11y/applications" = {
      screen-reader-enabled = false;
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" "Pardus" ];
    };

    "org/gnome/desktop/app-folders/folders/Pardus" = {
      categories = [ "X-Pardus-Apps" ];
      name = "X-Pardus-Apps.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "org.freedesktop.GnomeAbrt.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.font-viewer.desktop" "org.gnome.Loupe.desktop" "org.freedesktop.MalcontentControl.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///nix/store/vxl8psjv6rlim6dff7iwv7acckpp49jm-wallpaper.jpg";
      picture-uri-dark = "file:///nix/store/vxl8psjv6rlim6dff7iwv7acckpp49jm-wallpaper.jpg";
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      clock-show-weekday = true;
      color-scheme = "prefer-dark";
      cursor-size = 24;
      cursor-theme = "Numix-Cursor";
      document-font-name = "DejaVu Serif  11";
      enable-animations = true;
      enable-hot-corners = false;
      font-name = "JetBrains Mono,  12";
      gtk-theme = "palenight";
      icon-theme = "Papirus-Dark";
      monospace-font-name = "DejaVu Sans Mono 12";
      scaling-factor = mkUint32 1;
      text-scaling-factor = 1.0;
      toolbar-style = "text";
    };

    "org/gnome/desktop/peripherals/mouse" = {
      accel-profile = "flat";
      double-click = 500;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/search-providers" = {
      sort-order = [ "org.gnome.Settings.desktop" "org.gnome.Contacts.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/sound" = {
      theme-name = "ocean";
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
    };

    "org/gnome/desktop/wm/keybinds" = {
      cycle-group = "@as []";
      cycle-group-backward = "@as []";
      cycle-panels = "@as []";
      cycle-panels-backward = "@as []";
      cycle-windows = "@as []";
      cycle-windows-backward = "@as []";
      move-to-monitor-down = "@as []";
      move-to-monitor-left = "@as []";
      move-to-monitor-right = "@as []";
      move-to-monitor-up = "@as []";
      move-to-workspace-last = "@as []";
      move-to-workspace-left = "@as []";
      move-to-workspace-right = "@as []";
      switch-applications = "@as []";
      switch-applications-backward = "@as []";
      switch-group = "@as []";
      switch-group-backward = "@as []";
      switch-panels = "@as []";
      switch-panels-backward = "@as []";
      switch-to-workspace-left = "@as []";
      switch-to-workspace-right = "@as []";
      toggle-quick-settings = "@as []";
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = ":minimize,maximize,close";
      workspace-names = [];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/evolution" = {
      default-address-book = "system-address-book";
    };

    "org/gnome/gnome-system-monitor" = {
      maximized = false;
      show-dependencies = false;
      show-whose-processes = "user";
      window-height = 720;
      window-width = 800;
    };

    "org/gnome/gnome-system-monitor/proctree" = {
      col-26-visible = false;
      col-26-width = 0;
    };

    "org/gnome/mutter" = {
      edge-tiling = false;
      overlay-key = "Super_L";
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 890 705 ];
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = false;
      night-light-schedule-automatic = false;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      help = "@as []";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      power-button-action = "interactive";
    };

    "org/gnome/shell" = {
      disable-user-extensions = false;
      disabled-extensions = [];
      enabled-extensions = [ "tactile@lundal.io" "arcmenu@arcmenu.com" "space-bar@luchrioh" ];
      last-selected-power-profile = "power-saver";
      welcome-dialog-last-shown-version = "47.4";
    };

    "org/gnome/shell/extensions/arcmenu" = {
      arcmenu-hotkey = [ "<Super>r" ];
      dash-to-panel-standalone = false;
      highlight-search-result-terms = false;
      menu-background-color = "rgba(48,48,49,0.98)";
      menu-border-color = "rgb(60,60,60)";
      menu-foreground-color = "rgb(223,223,223)";
      menu-item-active-bg-color = "rgb(25,98,163)";
      menu-item-active-fg-color = "rgb(255,255,255)";
      menu-item-hover-bg-color = "rgb(21,83,158)";
      menu-item-hover-fg-color = "rgb(255,255,255)";
      menu-layout = "Runner";
      menu-separator-color = "rgba(255,255,255,0.1)";
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

    "org/gnome/shell/extensions/gsconnect" = {
      id = "824ddb90-2f10-4934-a59a-45324c63f32b";
      name = "nixos";
    };

    "org/gnome/shell/extensions/space-bar/appearance" = {
      application-styles = ".space-bar {n  -natural-hpadding: 12px;n}nn.space-bar-workspace-label.active {n  margin: 0 4px;n  background-color: rgba(255,255,255,0.3);n  color: rgba(255,255,255,1);n  border-color: rgba(0,0,0,0);n  font-weight: 700;n  border-radius: 4px;n  border-width: 0px;n  padding: 3px 8px;n}nn.space-bar-workspace-label.inactive {n  margin: 0 4px;n  background-color: rgba(0,0,0,0);n  color: rgba(255,255,255,1);n  border-color: rgba(0,0,0,0);n  font-weight: 700;n  border-radius: 4px;n  border-width: 0px;n  padding: 3px 8px;n}nn.space-bar-workspace-label.inactive.empty {n  margin: 0 4px;n  background-color: rgba(0,0,0,0);n  color: rgba(255,255,255,0.5);n  border-color: rgba(0,0,0,0);n  font-weight: 700;n  border-radius: 4px;n  border-width: 0px;n  padding: 3px 8px;n}";
      inactive-workspace-border-radius-active = false;
    };

    "org/gnome/shell/extensions/space-bar/behavior" = {
      always-show-numbers = false;
      enable-custom-label = false;
      position-index = 1;
      show-empty-workspaces = true;
      smart-workspace-names = false;
      system-workspace-indicator = false;
    };

    "org/gnome/shell/extensions/space-bar/shortcuts" = {
      activate-empty-key = "@as []";
      activate-previous-key = "@as []";
      enable-activate-workspace-shortcuts = true;
      enable-move-to-workspace-shortcuts = true;
      move-workspace-left = "@as []";
      move-workspace-right = "@as []";
      open-menu = "@as []";
    };

    "org/gnome/shell/extensions/space-bar/state" = {
      version = 32;
    };

    "org/gnome/shell/extensions/tactile" = {
      col-0 = 1;
      row-0 = 1;
      row-1 = 1;
      row-2 = 0;
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "palenight";
    };

    "org/gnome/shell/keybindings" = {
      switch-to-application-1 = [];
      switch-to-application-2 = [];
      toggle-quick-settings = [];
    };

    "org/gnome/shell/world-clocks" = {
      locations = [];
    };

    "org/gnome/yelp" = {
      show-cursor = true;
    };

    "org/gtk/gtk4/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 1.0 1.0 1.0 0.30000001192092896 ]) ];
      selected-color = mkTuple [ true 1.0 1.0 1.0 0.30000001192092896 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 181;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 0 0 ];
      window-size = mkTuple [ 960 581 ];
    };

    "org/virt-manager/virt-manager" = {
      manager-window-height = 1254;
      manager-window-width = 960;
    };

    "org/virt-manager/virt-manager/confirm" = {
      delete-storage = true;
      forcepoweroff = true;
      unapplied-dev = true;
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" ];
      uris = [ "qemu:///system" ];
    };

    "org/virt-manager/virt-manager/conns/qemu:system" = {
      window-size = mkTuple [ 800 627 ];
    };

    "org/virt-manager/virt-manager/details" = {
      show-toolbar = true;
    };

    "org/virt-manager/virt-manager/new-vm" = {
      graphics-type = "system";
    };

    "org/virt-manager/virt-manager/paths" = {
      image-default = "/home/onat/Documents/Machines/windows-11";
      media-default = "/home/onat/Documents/Machines";
    };

    "org/virt-manager/virt-manager/urls" = {
      isos = [ "/home/onat/Documents/Machines/windows-11.iso" "/home/onat/Documents/Machines/windows-11/unattended.iso" "/home/onat/Documents/Machines/windows-11/virtio-win.iso" ];
    };

    "org/virt-manager/virt-manager/vmlist-fields" = {
      disk-usage = false;
      network-traffic = false;
    };

    "org/virt-manager/virt-manager/vms/71612166c87a4d69aedeb81fd3a9659f" = {
      autoconnect = 1;
      vm-window-size = mkTuple [ 1920 1254 ];
    };

    "org/virt-manager/virt-manager/vms/b97ed06f5fb84169b18637e404542700" = {
      autoconnect = 1;
      vm-window-size = mkTuple [ 960 1254 ];
    };

    "org/virt-manager/virt-manager/vms/d8fb365c7741427cb2a4df454fb149a3" = {
      autoconnect = 1;
      vm-window-size = mkTuple [ 1920 1254 ];
    };

    "org/virt-manager/virt-manager/vms/df5a7567241848ddaeafe1885d6764a2" = {
      autoconnect = 1;
      vm-window-size = mkTuple [ 960 1254 ];
    };

    "system/locale" = {
      region = "en-GB.UTF-8";
    };

  };
}
