{
  config,
  pkgs,
  inputs,
  system,
  ...
}: {
  nixpkgs.config.allowUnfree = true;
  
  fonts.packages = with pkgs; [
    fira-code
    font-awesome
    nerdfonts
    noto-fonts
  ];
}
