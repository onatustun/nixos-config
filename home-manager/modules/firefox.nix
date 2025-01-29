{
  pkgs,
  ...
}: {
  programs.firefox = {
    enable = true;

    profiles = {
      onat = {
        name = "onat";

        search = {
          default = "DuckDuckGo";
          privateDefault = "DuckDuckGo";

          engines = {
            "Nix Packages" = {
              urls = [{
                template = "https://search.nixos.org/packages";
                params = [
                  { name = "type"; value = "packages"; }
                  { name = "query"; value = "{searchTerms}"; }
                ];
              }];

              definedAliases = [ "@pkgs" ];
            };

            "NixOS Wiki" = {
              urls = [{ 
                template = "https://wiki.nixos.org/w/index.php?search={searchTerms}"; 
              }];

              definedAliases = [ "@wiki" ];
            };
          };
        };

        extensions = with pkgs.nur.repos.rycee.firefox-addons; [
          bitwarden
          canvasblocker
          decentraleyes
          gruvbox-dark-theme
          i-dont-care-about-cookies
          mullvad
          privacy-badger
          return-youtube-dislikes
          scroll_anywhere
          sponsorblock
          translate-web-pages
          ublock-origin
          vimium
          violentmonkey
        ];

        settings = {
          "extensions.autoDisableScopes" = 0;
          "browser.search.region" = "GB";
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
        };

        userChrome = ''
          #TabsToolbar {
            display: none !important;
          }

          #PersonalToolbar {
            display: none !important;
          }
        '';
      };
    };
  };
}
