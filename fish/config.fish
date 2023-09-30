# Start X at login
if status is-login
	if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
		exec startx -- -keeptty
    else if test -z "$DISPLAY" -a "$XDG_VTNR" = 2
        exec Hyprland
	end
end

# bun
if status is-interactive
    # ~/.tmux/plugins
    fish_add_path $HOME/.tmux/plugins/t-smart-tmux-session-manager/bin
    # ~/.config/tmux/plugins
    fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin
    set --export BUN_INSTALL "$HOME/.bun"
    set --export PATH $BUN_INSTALL/bin $PATH
end

zoxide init fish | source
if status is-interactive
    alias cd="echo pls use 'z' instead thx :3"
end
