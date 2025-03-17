{
  pkgs,
  ...
}: {
  imports = [ 
    ./hardware-configuration.nix
    ./modules
  ];

  nix.settings.experimental-features = [
    "flakes"
    "nix-command"
  ];

  environment.systemPackages = with pkgs; [
    home-manager

    vim
    wget

    nodejs
    nodePackages.npm
    nodePackages.pnpm

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

  programs = {
    fish.enable = true;

    hyprland = {
      enable = true;
      xwayland.enable = true;
      withUWSM = true;
    };
  };

  users = {
    defaultUserShell = pkgs.fish;

    users.onat = {
      isNormalUser = true;

      extraGroups = [
        "networkmanage"
        "wheel"
      ];
    };
  };

  services = {
    desktopManager.plasma6.enable = true;

    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
  };

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.11";
}
