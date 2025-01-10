{
	description = "flake config";
	
	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		zen-browser.url = "github:0xc000022070/zen-browser-flake";
	};

	outputs = { self, nixpkgs, home-manager, zen-browser, ... }@inputs: let
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
