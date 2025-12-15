#!/bin/bash

picom -b &
# flashfocus &
flameshot &

sleep 1.5
~/.config/polybar/launch.sh &
for id in $(xinput list | grep "pointer" | cut -d '=' -f 2 | cut -f 1); do xinput --set-prop $id 'libinput Accel Profile Enabled' 0 1 0; done
for id in $(xinput list | grep "pointer" | cut -d '=' -f 2 | cut -f 1); do xinput --set-prop $id 'libinput Accel Speed' 0.8; done
xinput set-prop "10" "libinput Accel Profile Speed" 0
# xrandr --output DP-0 --scale 0.5x0.5 &
# xrandr --output DP-2 --scale 0.5x0.5 &
pkill solaar
xrdb -merge ~/.Xresources
