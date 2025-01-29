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
    inputs.nur.modules.homeManager.default
  ];

  programs.home-manager.enable = true;
}
