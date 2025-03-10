{
  description = "flake config";

  inputs = { 
    home-manager = { 
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf.url = "github:notashelf/nvf";
  };

  outputs = { 
    self, 
    home-manager, 
    nixpkgs, 
    nur,
    nvf,
    ... 
  } @ inputs: let
    system = "x86_64-linux";
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      inherit system;

      modules = [ 
        ./nixos/configuration.nix 
      ];	
    };

    homeConfigurations.onat = home-manager.lib.homeManagerConfiguration { 
      pkgs = nixpkgs.legacyPackages.${system};

      extraSpecialArgs = { 
        inherit inputs system;
      };

      modules = [ 
        ./home-manager/home.nix
      ];
    };
  };
}
