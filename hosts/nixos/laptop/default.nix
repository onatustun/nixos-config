{
  inputs,
  pkgs,
  username,
  ...
}: {
  imports = [inputs.hardware.nixosModules.framework-13-7040-amd];

  users.users.${username}.extraGroups = [
    "audio"
    "input"
    "libvirt"
    "networkmanager"
    "power"
    "storage"
    "video"
    "wheel"
  ];

  services = {
    fwupd.enable = true;
    power-profiles-daemon.enable = true;
  };

  environment.systemPackages = [pkgs.framework-tool];
  hardware.framework.enableKmod = true;
  home-manager.users.${username}.home.stateVersion = "24.11";
  system.stateVersion = "24.11";
}
