{
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    home-manager
    git
    vim
  ];
}
