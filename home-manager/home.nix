{ config,
  pkgs,
  system,
  inputs,
  ... 
}: { 
  home = { 
    username = "onat";
    homeDirectory = "/home/onat";
    stateVersion = "24.11";	
  };

  imports = [ 
    ./packages.nix
    ./modules
  ];

  programs.home-manager.enable = true;
}
