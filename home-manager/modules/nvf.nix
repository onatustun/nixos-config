{
  programs.nvf = {
    enable = true;
                    
    settings = {
      vim = {
        theme = {
	        enable = true;
	        name = "gruvbox";
	        style = "dark";
	      };
           
        languages = {
          enableLSP = true;
          enableTreesitter = true;
          nix.enable = true;
        };

        options = {
          shiftwidth = 2;
          tabstop = 2;
        };

        binds = {
          whichKey.enable = true;
          cheatsheet.enable = true;
        };

        treesitter = {
          enable = true;
          
          context = {
            enable = true;
            setupOpts.separator = null;
          };
        };

        filetree.neo-tree.enable = true;
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
      };
    };
  };
}
