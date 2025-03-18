{
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./modules
  ];

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  boot.loader.systemd-boot.enable = true;
  services.power-profiles-daemon.enable = true;

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  programs.zsh.enable = true;

  users = {
    defaultUserShell = with pkgs; [
      zsh
    ];

    users.onat = {
      isNormalUser = true;

      extraGroups = [
        "networkmanager"
        "wheel"
      ];
    };
  };

  system.stateVersion = "24.11";
}
