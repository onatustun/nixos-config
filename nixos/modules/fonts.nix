{
  pkgs,
  ...
}: {
  fonts = {
    fontDir.enable = true;
    fontconfig.enable = true;

    packages = with pkgs; [
      font-awesome
      nerd-fonts.fira-code
      nerd-fonts.jetbrains-mono
      nerd-fonts.noto
      nerd-fonts.symbols-only
    ];
  };
}
