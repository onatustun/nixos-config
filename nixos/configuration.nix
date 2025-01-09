{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules
    ];
 
  services.power-profiles-daemon.enable = true;
  services.fwupd.enable = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  environment.systemPackages = [ pkgs.home-manager ];
  system.stateVersion = "24.11";
}
