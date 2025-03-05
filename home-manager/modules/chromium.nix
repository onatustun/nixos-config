{
  pkgs,
  ...
}: {
  programs.chromium = {
    enable = true;
    package = pkgs.brave;

    extensions = [
      /* Bitwarden */ { id = "nngceckbapebfimnlniiiahkandclblb"; }
      /* Privacy Badger */ { id = "pkehgijcmpdhfbdbbnkijodmdjhbjlgp"; }
      /* SponsorBlock */ { id = "mnjggcdmjocbbbhaepdhchncahnbgone"; }
      /* Vimium */ { id = "dbepggeogbaibhgnhhndojpepiihcmeb"; }
      /* Violentmonkey */ { id = "jinjaccalgkegednnccohejagnlnfdag"; }
      /* uBlock Origin */ { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; }
    ];
  };
}
