{
  services.xserver.videoDrivers = [ "vmware" ];
  users.groups.libvirtd.members = ["onat"];

  virtualisation = {
    spiceUSBRedirection.enable = true;
    libvirtd.enable = true;

    vmware = {
      host.enable = true;
      guest.enable = true;
    };
  };
}
