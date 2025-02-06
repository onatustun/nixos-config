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

  environment = {
    systemPackages = with pkgs; [ 
      home-manager
      nodejs
      nodePackages.pnpm
      nodePackages.npm 
      vmware-workstation
      virtualbox
      quickemu
      qemu
    ];

    sessionVariables.NIXOS_OZONE_WL = "1";
  };

  system.stateVersion = "24.11";
}
