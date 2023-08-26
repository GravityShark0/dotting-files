xrandr --setprovideroutputsource modesetting NVIDIA-0
# xrandr --output HDMI-0 --auto --output eDP-1-1 --auto
dash ~/.screenlayout/dual.sh

artix-pipewire-launcher &

dash ~/.xprofile &
picom &

exec dbus-launch --exit-with-session awesome
