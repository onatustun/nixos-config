{ 
  pkgs,
  ... 
}: { 
  programs.zsh.enable = true;

  users = { 
    defaultUserShell = pkgs.zsh;

    users.onat = { 
      isNormalUser = true;

      extraGroups = [ 
        "networkmanager"
        "wheel"
      ];
    };
  };

  services = {
    desktopManager.plasma6.enable = true;

    displayManager = { 
      sddm = { 
        enable = true;
        wayland.enable = true;
      };

      autoLogin = {
        enable = false;
        user = "onat";
      };
    };
  };
}
