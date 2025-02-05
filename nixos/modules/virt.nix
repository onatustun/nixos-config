{
  users.extraGroups.vboxusers.members = [ "onat" "nixos" ];
  nixpkgs.config.allowUnfree = true;
  virtualisation = {
    virtualbox = {
      guest.enable = true;
      host = {
        enable = true; 
      };
    };
  };
}
