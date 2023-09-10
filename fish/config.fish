# Start X at login
if status is-login
	if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
		exec startx -- -keeptty
    else if test -z "$DISPLAY" -a "$XDG_VTNR" = 2
        # export LIBVA_DRIVER_NAME=nvidia
        # export XDG_SESSION_TYPE=wayland
        # export __GLX_VENDOR_LIBRARY_NAME=nvidia
        # export WLR_NO_HARDWARE_CURSORS=1
        # export WLR_DRM_DEVIXES=/dev/dri/card0
        exec Hyprland
	end
end
