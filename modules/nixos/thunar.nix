{pkgs, ...}: {
  services.tumbler.enable = true;

  programs.thunar = {
    enable = true;

    plugins = with pkgs.xfce; [
      thunar-archive-plugin
      thunar-media-tags-plugin
      thunar-volman
    ];
  };

  environment.systemPackages = with pkgs; [
    kdePackages.ark
    ffmpegthumbnailer
    libgsf
    xfce.tumbler
  ];
}
