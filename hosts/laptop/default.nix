{
  pkgs,
  ...
}: {
  imports = [ 
    ./hardware-configuration.nix
    ./modules
  ];

  programs = {
    zsh.enable = true;

    hyprland = {
      enable = true;
      xwayland.enable = true;
      withUWSM = true;
    };
  };

  users = {
    defaultUserShell = pkgs.zsh;

    users.onat = {
      isNormalUser = true;

      extraGroups = [
        "networkmanage"
        "wheel"
      ];
    };
  };

  services = {
    desktopManager.plasma6.enable = true;

    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
  };

  system.stateVersion = "24.11";
}
