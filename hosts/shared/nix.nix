{
  nixpkgs.config.allowUnfree = true;

  nix = {
    settings = {
      accept-flake-config = true;
      auto-optimise-store = true;
      warn-dirty = false;

      experimental-features = [
        "flakes"
        "nix-command"
        "pipe-operators"
      ];
    };

    gc = {
      automatic = true;
      options = "--delete-older-than-5d";
    };

    optimise.automatic = true;
  };
}
