#!/bin/bash

picom &
flashfocus &

sleep 3
xinput set-prop "10" "libinput Accel Profile Enabled" 0 1 0
xinput set-prop "10" "libinput Accel Profile Speed" 0
xrandr --output HDMI-1 --scale 1.1x1.1 &
setxkbmap -option caps:ctrl_modifier
xcape -e 'Caps_Lock=Escape'
pkill solaar
bash ~/.config/polybar/launch.sh &
