xrandr --setprovideroutputsource modesetting NVIDIA-0
# xrandr --output HDMI-0 --auto --output eDP-1-1 --auto
dash ~/.screenlayout/single.sh

artix-pipewire-launcher &

# xset -dpms &
dash ~/.xprofile &
picom &
qownnotes &
# xscreensaver --no-splash &

exec dbus-launch --exit-with-session awesome
