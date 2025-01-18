{ 
  config,
  pkgs,
  system,
  ... 
}: {
  home.pointerCursor = {
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
  };
}
