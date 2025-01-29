{
  config,
  pkgs,
  inputs,
  system,
  ...
}: {
  nixpkgs.config.allowUnfree = true;
 
  fonts = {
    fontDir.enable = true;
    fontconfig.enable = true;

    packages = with pkgs; [
      font-awesome
      nerd-fonts.jetbrains-mono
      nerd-fonts.noto
      nerd-fonts.fira-code
    ];
  };
}
