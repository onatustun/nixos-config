{
  description = "flake config";

  nixConfig = {
    experimental-features = [
      "flakes"
      "nix-command"
    ];
  };

  nixpkgs.config.allowUnfree = true;

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
        ./home-manager/home.nix
      ];
    };
  };
}
