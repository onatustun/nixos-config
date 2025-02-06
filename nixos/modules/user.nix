{ 
  pkgs,
  user,
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
    displayManager = { 
      sddm = { 
        enable = true;
        wayland.enable = true;
      };
    };

    desktopManager.plasma6.enable = true;

    xserver.enable = true;
  };
}
