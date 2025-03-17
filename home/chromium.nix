{
  pkgs,
  ...
}: {
  programs.chromium = {
    enable = true;
    package = pkgs.brave;

    extensions = [
      { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; } # uBlock Origin
      { id = "dbepggeogbaibhgnhhndojpepiihcmeb"; } # Vimium
      { id = "ghmbeldphafepmbegfdlkpapadhbakde"; } # Proton Pass
      { id = "jinjaccalgkegednnccohejagnlnfdag"; } # Violentmonkey
      { id = "jplgfhpmjnbigmhklmmbgecoobifkmpa"; } # Proton VPN
      { id = "mnjggcdmjocbbbhaepdhchncahnbgone"; } # SponsorBlock
      { id = "pkehgijcmpdhfbdbbnkijodmdjhbjlgp"; } # Privacy Badger
    ];

    commandLineArgs = [
      "--password-store=basic"
    ];
  };
}
