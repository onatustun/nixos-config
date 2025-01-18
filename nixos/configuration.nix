{ 
  config,
  pkgs,
  ... 
}: {
  imports = [ 
    ./hardware-configuration.nix
    ./modules
  ];
 
  nix.settings.experimental-features = [ 
    "nix-command" 
    "flakes" 
  ];

  environment.systemPackages = [ 
    pkgs.home-manager 
  ];

  services = { 
    power-profiles-daemon.enable = true;
    fwupd.enable = true;
  };

  system.stateVersion = "24.11";
}
