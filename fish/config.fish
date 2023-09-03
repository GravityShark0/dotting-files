# Start X at login
if status is-login
	if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
		exec startx -- -keeptty
    else if test -z "$DISPLAY" -a "$XDG_VTNR" = 2
        exec Hyprland
	end
end
