{
  pkgs,
  ... 
}: {
  home.pointerCursor = {
    package = pkgs.bibata-cursors;

    name = "Bibata-Modern-Classic";
  };

  gtk ={
    enable = true;

    font = {
      name = "Sans";
      size = 11;
    };
  };
}
