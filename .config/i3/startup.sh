#!/bin/bash

picom -b &
# flashfocus &
flameshot &

sleep 1.5
~/.config/polybar/launch.sh &
for id in $(xinput list | grep "pointer" | cut -d '=' -f 2 | cut -f 1); do xinput --set-prop $id 'libinput Accel Profile Enabled' 0 1 0; done
for id in $(xinput list | grep "pointer" | cut -d '=' -f 2 | cut -f 1); do xinput --set-prop $id 'libinput Accel Profile Speed' 0; done
xinput set-prop "10" "libinput Accel Profile Speed" 0
xrandr --output HDMI-1 --scale 1.1x1.1 &
setxkbmap -option caps:ctrl_modifier
setxkbmap -option caps:swapescape
pkill solaar
