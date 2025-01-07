{
  programs.wlogout = {
    enable = true;

    layout = [
      {
        label = "lock";
        action = "hyprlock";
        text = "Lock";
      }

      {
        label = "shutdown";
        action = "shutdown -h now";
        text = "Shutdown";
      }

      {
        label = "reboot";
        action = "reboot";
        text = "Reboot";
      }
    ];

    style = ''
      * {
        box-shadow: none;
	background-image: none;
	font-family: "JetBrains Mono"
      }

      window {
        background-color: rgba(12, 12, 12, 0.9);
      }

      button {
        border: none;
	background-color: #504945;
	color: #fbf1c7;
	background-repeat: no-repeat;
	background-size: 50%;
	border-radius: 0;
	background-position: 50% 45%;
	margin: 5px;
      }

      button:active, button:hover {
        background-color: #d65d0e;
      }

      #lock {
    	background-image: image(url("/home/onat/nix/home-manager/modules/wlogout/icons/lock_white.png"));
      }

      #shutdown {
    	background-image: image(url("/home/onat/nix/home-manager/modules/wlogout/icons/shutdown_white.png"));
      }

      #reboot {
    	background-image: image(url("/home/onat/nix/home-manager/modules/wlogout/icons/reboot_white.png"));
      }
    '';
  };
}
