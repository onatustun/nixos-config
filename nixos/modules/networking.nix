{ 
  pkgs,
  ... 
}: { 
  networking = { 
    hostName = "nixos";
    networkmanager.enable = true;
    firewall.enable = true;
    nftables.enable = true;

    nameservers = [ 
      "1.1.1.1"
      "1.0.0.1"
    ];
  };

  services = { 
    resolved = { 
      enable = true;
      dnssec = "true";

      domains = [ 
        "~." 
      ];

      fallbackDns = [ 
        "1.1.1.1"
	      "1.0.0.1"
      ];

      dnsovertls = "true";
    };

    mullvad-vpn = { 
      enable = true;
      package = pkgs.mullvad-vpn;
    };
  };
}
