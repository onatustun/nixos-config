{
  description = "flake config";

  inputs = { 
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
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
    home-manager,
    nvf,
    ... 
  } @ inputs: let
    inherit (self) outputs;
    system = "x86_64-linux";
    homeStateVersion = "24.11";
    user = "onat";
    hosts = [{
      hostname = "laptop";
      stateVersion = "24.11";
    }];
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = { 
        inherit inputs outputs system homeStateVersion user hosts;
      };

      modules = [ 
        ./hosts
      ];	
    };

    homeConfigurations.onat = inputs.home-manager.lib.homeManagerConfiguration { 
      pkgs = nixpkgs.legacyPackages.${system};

      extraSpecialArgs = { 
        inherit inputs outputs system homeStateVersion user hosts;
      };

      modules = [ 
        ./home
      ];
    };
  };
}
