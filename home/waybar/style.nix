{ 
  config,
  iconsPath,
  ...
}: ''
  * {
    background: none;
    border-radius: 0;
    border: none;
    box-shadow: none;
    color: ${config.stylix.base16Scheme.base05};
    font-family: JetBrainsMono Nerd Font Mono;
    font-size: 16px;
    margin: 0;
    min-height: 0;
    padding: 0;
    text-shadow: none;
    transition: none;
  }

  .modules-left,
  .modules-right {
    background-color: ${config.stylix.base16Scheme.base00};
    border-radius: 6px;
  }

  #custom-keyboard,
  #bluetooth, 
  #network,
  #wireplumber,
  #battery, 
  #clock,
  #workspaces button,
  #tray,
  #taskbar button { 
    margin: 0 2px;
    min-width: 16px;
    min-height: 16px;
    padding: 2px;
  }

  #window,
  #custom-keyboard,
  #bluetooth, 
  #network,
  #wireplumber,
  #battery,
  #taskbar button {
    background-size: 16px 16px;
    background-position: center;
    background-repeat: no-repeat;
    color: transparent;
  }

  #bluetooth.off, 
  #bluetooth.disabled, 
  #bluetooth.no-controller, 
  #wireplumber.muted,
  #network.disabled, 
  #network.disconnected {
    background-image: none;
    margin: 0;
    min-height: 0;
    min-width: 0;
    opacity: 0;
    padding: 0;
  }

  tooltip {
    border-radius: 6px;
  }

  #custom-keyboard {
    background-image: url("${iconsPath}/misc/keyboard.svg");
  }

  #custom-keyboard.disabled {
    opacity: 0.5;
  }

  #workspaces button {
    opacity: 0.5;
  }

  #workspaces button.active {
    opacity: 1;
  }

  #bluetooth.on, 
  #bluetooth.discoverable, 
  #bluetooth.pairable {
    background-image: url("${iconsPath}/bluetooth/default.svg");
  }

  #bluetooth.connected, 
  #bluetooth.discovering {
    background-image: url("${iconsPath}/bluetooth/connected.svg");
  }

  #network {
    background-image: url("${iconsPath}/network/default.svg");
  }

  #wireplumber {
    background-image: url("${iconsPath}/wireplumber/default.svg");
  }
  
  #battery.empty {
    background-image: url("${iconsPath}/battery/empty.svg");
    opacity: 0.5;
  }

  #battery.low {
    background-image: url("${iconsPath}/battery/low.svg");
  }

  #battery.medium {
    background-image: url("${iconsPath}/battery/medium.svg");
  }

  #battery.high {
    background-image: url("${iconsPath}/battery/high.svg");
  }

  #battery.full {
    background-image: url("${iconsPath}/battery/full.svg");
  }

  #battery.charging {
    background-image: url("${iconsPath}/battery/charging.svg");
  }
''
