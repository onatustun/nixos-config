{
  programs.fastfetch = {
    enable = true;

    settings = {
      logo.source = "nixos";

      display = {
        size = {
	  maxPrefix = "MB";
	  ndigits = 0;
	};
      };

      modules = [
        "title"
        "break"
        "os"
        "host"
        "kernel"
        "uptime"
	"packages"
	"shell"
        "display"
        "wm"
	"cpu"
	"gpu"
	"memory"
	"swap"
	"disk"
	"battery"
        "break"
        "colors"
      ];
    };
  };
}
