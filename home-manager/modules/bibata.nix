{
  pkgs,
  ... 
}: {
  home.pointerCursor = {
    package = pkgs.bibata-cursors;

    name = "Bibata-Modern-Classic";
  };
}
