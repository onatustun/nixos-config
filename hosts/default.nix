{
  hosts,
  ...
}: {
  imports = [
    ./${hosts.hostname}
    ./common
  ];

  nix.settings.experimental-features = [
    "flakes"
    "nix-command"
  ];

  nixpkgs.config.allowUnfree = true;
}
