{
  pkgs,
  ...
}: {
  imports = [ 
    ./hardware-configuration.nix
  ];

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  boot.loader.systemd-boot.enable = true;

  security.rtkit.enable = true;

  fonts = {
    fontDir.enable = true;
    fontconfig.enable = true;

    packages = with pkgs; [
      font-awesome
      nerd-fonts.jetbrains-mono
      nerd-fonts.symbols-only
    ];
  };

  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
    };

    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
  };

  environment.systemPackages = with pkgs; [
    home-manager

    git
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
    zsh.enable = true;

    hyprland = {
      enable = true;
      xwayland.enable = true;
      withUWSM = true;
    };
  };

  users = {
    defaultUserShell = pkgs.zsh;

    users.onat = {
      isNormalUser = true;

      extraGroups = [
        "networkmanage"
        "wheel"
      ];
    };
  };

  services = {
    blueman.enable = true;
    power-profiles-daemon.enable = true;
    desktopManager.plasma6.enable = true;

    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };

    pipewire = {
        enable = true;
        pulse.enable = true;
        alsa = {
          enable = true;
          support32Bit = true;
        };
      };
  };

  time.timeZone = "Europe/London";
  
  il8n = {
    defaultLocale = "en_US.UTF-8";
    extraLocaleSettings = { 
       LC_ADDRESS = "en_GB.UTF-8";
       LC_IDENTIFICATION = "en_GB.UTF-8";
       LC_MEASUREMENT = "en_GB.UTF-8";
       LC_MONETARY = "en_GB.UTF-8";
       LC_NAME = "en_GB.UTF-8";
       LC_NUMERIC = "en_GB.UTF-8";
       LC_PAPER = "en_GB.UTF-8";
       LC_TELEPHONE = "en_GB.UTF-8";
       LC_TIME = "en_GB.UTF-8";
     };
  };

  system.stateVersion = "24.11";
}
