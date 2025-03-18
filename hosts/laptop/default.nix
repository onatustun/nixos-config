{
  pkgs,
  hostname,
  stateVersion,
  user,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./modules
  ];

  networking = {
    hostName = hostname;
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
    defaultUserShell = pkgs.zsh;

    users.${user} = {
      isNormalUser = true;

      extraGroups = [
        "networkmanager"
        "wheel"
      ];
    };
  };

  system.stateVersion = stateVersion;
}
