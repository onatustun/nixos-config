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

  system.stateVersion = "24.11";
}
