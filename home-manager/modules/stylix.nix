{ pkgs, ... }:

{
  stylix.enable = true;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";
  stylix.cursor.package = pkgs.bibata-cursors;
  stylix.image = ./wallpaper.png;
  stylix.cursor.name = "Bibata-Modern-Ice";
}
