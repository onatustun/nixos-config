{
  pkgs,
  ...
}: {
  imports = [
    ./bat.nix
    ./brave.nix
    ./direnv.nix
    ./eza.nix
    ./ff.nix
    ./fish
    ./ghostty.nix
    ./git.nix
    ./hypr 
    ./helix
    ./nh.nix
    ./pointer.nix
    ./rofi.nix
    ./starship.nix
    ./stylix
    ./tmux.nix
    ./waybar 
  ];

  xdg = {
    enable = true;
    userDirs.createDirectories = true;
    mime.enable = true;

    mimeApps = {
      enable = true;

      defaultApplications = {
        "inode/directory" = "thunar.desktop";
        "text/plain" = "helix.desktop";
      };
    };
  };

  manual = {
    html.enable = false;
    json.enable = false;
    manpages.enable = false;
  };
    
  home = {
    username = "onat";
    homeDirectory = "/home/onat";
    stateVersion = "24.11";

    sessionVariables = {
      BROWSER = "brave";
      EDITOR = "hx";
      FLAKE = "/home/onat/nix";
      SHELL = "fish";
      VISUAL = "hx";
    };

    packages = with pkgs; [
      bottom
      fd
      fzf
      git
      less
      nix-prefetch-git
      nix-search-cli
      nix-search-tv
      obsidian
      prettyping
      rar
      ripgrep
      swww
      typst
      unzip
      xfce.thunar
      yazi
      zip
      zmkBATx
      zoxide
    ];
  };
}
