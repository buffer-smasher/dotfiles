#!/bin/bash

### WALLPAPER ###
# single image or cycle folder
#wallpaper="$HOME/Pictures/Backgrounds/favourites/peakpx.jpg"
wallpaper=$(shuf -e -n1 ~/Pictures/Backgrounds/aenami/*)

feh --bg-scale $wallpaper
wal -i $wallpaper

### BORDERS ###
${HOME}/.config/i3/border.sh &

### RGB ###
source "${HOME}/.cache/wal/colors.sh"
openrgb --mode direct -c ${color4:1}
openrgb -d 3 --mode static -c ${color4:1}
