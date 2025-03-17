{
  imports = [
    ./laptop
  ];

  nix.settings.expeprimental-features = [
    "flakes"
    "nix-command"
  ];

  nixpkgs.config.allowUnfree = true;
}
