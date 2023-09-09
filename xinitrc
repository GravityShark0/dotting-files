(emacs --daemon && emacsclient -nc) &
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --output HDMI-0 --auto --output eDP-1-1 --auto
# dash ~/.screenlayout/single.sh

artix-pipewire-launcher &

# xset -dpms &
picom &
# qownnotes &
# st -e nvim ~/Notes/index.norg &
# xscreensaver --no-splash &
# dash ~/.xprofile &
exec dbus-launch --exit-with-session awesome
