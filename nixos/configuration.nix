{ 
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

  environment = {
    systemPackages = with pkgs; [ 
      home-manager
      nodejs
      nodePackages.pnpm
      nodePackages.npm 
      vmware-workstation
    ];

    sessionVariables.NIXOS_OZONE_WL = "1";
  };

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.11";
}
