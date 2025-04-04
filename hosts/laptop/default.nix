{
  pkgs,
  ...
}: {
  nix.settings.experimental-features = [
    "flakes"
    "nix-command"
  ];

  nixpkgs.config.allowUnfree = true;

  imports = [
    ./hardware-configuration.nix
    ../common
  ];

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  programs = {
    zsh.enable = true;
    hyprland.enable = true;
  };

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

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  boot.loader.systemd-boot.enable = true;
  services.power-profiles-daemon.enable = true;
  system.stateVersion = "24.11";
}
