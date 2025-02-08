{ 
  services = { 
    keyd = { 
      enable = true;
        
      keyboards.default = {
	      ids = [
	        "*" 
	      ];

	      settings = { 
	        main = { 
	          capslock = "esc";
	          esc = "capslock";
	          alt = "overload(alt, alt)";
	        };

          alt = { 
	          d = "back";
	          f = "forward";
	          h = "left";
	          j = "down";
	          k = "up";
	          l = "right";
	        };
        };
      };
    };

    xserver = { 
      enable = true;

      xkb = { 
        layout = "us";
        variant = "";
      };
    };

    libinput.enable = true;
  };

  environment.etc."libinput/local-overrides.quirks".text = ''
    [Serial Keyboards]
    MatchUdevType=keyboard
    MatchName=keyd virtual keyboard
    AttrKeyboardIntegration=internal
  '';
}
