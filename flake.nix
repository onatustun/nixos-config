{
  description = "flake config";

  inputs = { 
    stable.url = "github:nixos/nixpkgs/nixos-24.05";
    unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs.follows = "unstable";

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
    stable,
    unstable,
    nixpkgs, 
    home-manager,
    nvf,
    ... 
  } @ inputs: let
    inherit (self) outputs;
    system = "x86_64-linux";
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = { 
        inherit inputs outputs;
      };

      modules = [ 
        ./hosts/laptop
      ];	
    };

    homeConfigurations.onat = inputs.home-manager.lib.homeManagerConfiguration { 
      pkgs = nixpkgs.legacyPackages.${system};

      extraSpecialArgs = { 
        inherit inputs outputs self;
      };

      modules = [ 
        ./home
      ];
    };
  };
}
