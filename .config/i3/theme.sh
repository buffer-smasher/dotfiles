#!/bin/bash

### WALLPAPER ###
# single image or cycle folder
wallpaper="$HOME/Pictures/Backgrounds/aenami/alena-aenami-far-from-tomorrow-1080px.jpg"
#wallpaper=$(shuf -e -n1 ~/Pictures/Backgrounds/aenami/*)

feh --bg-scale $wallpaper
wal -i $wallpaper

### NOTIFICATIONS ###
bash ${HOME}/.config/i3/dunst-gen.sh &

### BORDERS ###
${HOME}/.config/i3/border.sh &

### RGB ###
source "${HOME}/.cache/wal/colors.sh"
COLOUR=${color4:1}
openrgb --mode direct -c $COLOUR
openrgb -d 3 --mode static -c $COLOUR
