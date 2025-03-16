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
      wget

      home-manager

      nodejs
      nodePackages.pnpm
      nodePackages.npm 

      vmware-workstation
 
      cargo
      cargo-expand
      cargo-fuzz
      clang
      clippy
      gcc
      rust-analyzer
      rustc
      rustfmt
      rustup
    ];

    sessionVariables.NIXOS_OZONE_WL = "1";
  };

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.11";
}
