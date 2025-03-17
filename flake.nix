{
  description = "flake config";

  nixConfig.experimental-features = [
    "flakes"
    "nix-command"
  ];

  inputs = { 
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { 
    self, 
    nixpkgs, 
    ... 
  } @ inputs: let
    inherit (self) outputs;
    system = "x86_64-linux";
    sharedPkgs = import {
      inherit system;
      config.allowUnfree = true; 
    };
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      inherit system;
        
      specialArgs = { 
        inherit inputs outputs self;
        sharedPkgs = sharedPkgs;
      };

      modules = [ 
        ./hosts/laptop
      ];	
    };

    homeConfigurations.onat = inputs.home-manager.lib.homeManagerConfiguration { 
      pkgs = sharedPkgs;

      extraSpecialArgs = { 
        inherit inputs outputs self;
        sharedPkgs = sharedPkgs;
      };

      modules = [ 
        { home-manager.useGlobalPkgs = true; }
        ./home-manager/home.nix
      ];
    };
  };
}
