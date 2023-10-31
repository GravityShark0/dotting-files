#!/bin/dash

(emacs --daemon && emacsclient -nc) &
# xrandr --setprovideroutputsource modesetting NVIDIA-0 --auto
# xrandr --auto
dash ~/.screenlayout/auto.sh
# xrandr --output HDMI-0 --auto --output eDP-1-1 --auto
# dash ~/.screenlayout/single.sh

artix-pipewire-launcher &

# xset -dpms &
picom &
# discord &
st -e syncclock &
# tmux new-session -d -s "gravity" &
# firefox &
# qownnotes &
# st -e nvim ~/Notes/index.norg &
# xscreensaver --no-splash &
# dash ~/.xprofile &
exec dbus-launch --exit-with-session awesome
