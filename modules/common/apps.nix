{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    jellyfin-media-player
    nicotine-plus
    obsidian
  ];
}
