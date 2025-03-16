{
  pkgs,
  ...
}: {
  programs.chromium = {
    enable = true;
    package = pkgs.brave;

    extensions = [
      /* Privacy Badger */ { id = "pkehgijcmpdhfbdbbnkijodmdjhbjlgp"; }
      /* Proton Pass */ { id = "ghmbeldphafepmbegfdlkpapadhbakde"; }
      /* Proton VPN */ { id = "jplgfhpmjnbigmhklmmbgecoobifkmpa"; }
      /* SponsorBlock */ { id = "mnjggcdmjocbbbhaepdhchncahnbgone"; }
      /* Vimium */ { id = "dbepggeogbaibhgnhhndojpepiihcmeb"; }
      /* Violentmonkey */ { id = "jinjaccalgkegednnccohejagnlnfdag"; }
      /* uBlock Origin */ { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; }
    ];
  };
}
