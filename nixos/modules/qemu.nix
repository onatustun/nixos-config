{
  pkgs,
  ...
}: {
  users.groups.libvirtd.members = ["onat"];

  virtualisation = {
    libvirtd.enable = true;
    spiceUSBRedirection.enable = true;
  };

  environment.systemPackages = with pkgs; [
    qemu
    quickemu
  ];
}
