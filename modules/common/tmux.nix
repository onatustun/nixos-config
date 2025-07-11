{homeDir, ...}: {
  home-manager.sharedModules = [
    {
      programs.tmux = {
        enable = true;
        baseIndex = 1;
        escapeTime = 0;
        keyMode = "vi";
        mouse = true;
        prefix = "C-b";

        extraConfig = ''
          set -g default-terminal "tmux-256color"
          set -ag terminal-overrides ",xterm-256color:RGB"

          set -g status-position top
          set -g status-justify absolute-centre
          set -g status-style "fg=blue bg=default"
          set -g status-right ""
          set -g status-left "#S"
          set -g status-left-style "fg=color8"
          set -g status-right-length 0
          set -g status-left-length 100
          setw -g window-status-current-style "fg=blue bg=default bold"
          setw -g window-status-current-format "#I:#W "
          setw -g window-status-style "fg=color8"

          bind-key h select-pane -L
          bind-key j select-pane -D
          bind-key k select-pane -U
          bind-key l select-pane -R

          bind-key -r H resize-pane -L 5
          bind-key -r J resize-pane -D 5
          bind-key -r K resize-pane -U 5
          bind-key -r L resize-pane -R 5

          bind-key f run-shell "tmux neww ${homeDir}/.config/tmux/sessionizer.sh"
          bind G new-window -n 'lazygit' lazygit
          bind-key g run-shell "${homeDir}/.config/tmux/github.sh"

          bind-key c new-window -c "#{pane_current_path}"
          bind-key % split-window -h -c "#{pane_current_path}"
          bind-key '"' split-window -v -c "#{pane_current_path}"
          bind-key b set-option status
        '';
      };

      home.file = {
        ".config/tmux/sessionizer.sh" = {
          executable = true;

          text = ''
            #!/usr/bin/env bash

            if [[ $# -eq 1 ]]; then
                selected=$1
            else
                search_dirs=()
                potential_dirs=(
                    "$HOME"
                    "$HOME/Documents/code/git"
                    "$HOME/Documents/code"
                )

                for dir in "''${potential_dirs[@]}"; do
                    if [[ -d "$dir" ]]; then
                        search_dirs+=("$dir")
                    fi
                done

                if [[ ''${#search_dirs[@]} -gt 0 ]]; then
                    selected=$(fd --max-depth 1 --type d . "''${search_dirs[@]}" | \
                        sed "s|^$HOME/||" | \
                        sk --margin 10,35% --color="bw"
                    )
                    if [[ -n "$selected" ]]; then
                        selected="$HOME/$selected"
                    fi
                fi
            fi

            if [[ -z $selected ]]; then
                exit 0
            fi

            selected_name=$(basename "$selected" | tr . _)

            if ! tmux has-session -t=$selected_name 2> /dev/null; then
                tmux new-session -ds $selected_name -c $selected
            fi

            if [[ -z $TMUX ]]; then
                tmux attach-session -t $selected_name
            else
                tmux switch-client -t $selected_name
            fi
          '';
        };

        ".config/tmux/github.sh" = {
          executable = true;

          text = ''
            #!/usr/bin/env bash

            dir=$(tmux display-message -p '#{pane_current_path}')
            cd "$dir"

            if ! git rev-parse --git-dir > /dev/null 2>&1; then
              tmux display-message "Not in a git repository"
              exit 1
            fi

            url=$(git remote get-url origin 2>/dev/null)

            if [[ -z "$url" ]]; then
              tmux display-message "No origin remote found"
              exit 1
            fi

            if [[ $url == git@github.com:* ]]; then
              url=$(echo "$url" | sed 's/git@github.com:/https:\/\/github.com\//' | sed 's/\.git$//')
            elif [[ $url == https://github.com/* ]]; then
              url=$(echo "$url" | sed 's/\.git$//')
            fi

            if [[ $url == *"github.com"* ]]; then
              xdg-open "$url"
            else
              tmux display-message "This repository is not hosted on GitHub"
            fi
          '';
        };
      };
    }
  ];
}
