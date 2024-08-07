#!/bin/bash

### WALLPAPER ###
# single image or cycle folder
#wallpaper="$HOME/Pictures/Backgrounds/favourites/peakpx.jpg"
wallpaper=$(shuf -e -n1 ~/Pictures/Backgrounds/aenami/*)

feh --bg-scale $wallpaper
wal -i $wallpaper

### RGB ###
source "${HOME}/.cache/wal/colors.sh"
openrgb --mode direct -c ${color4:1}

### BORDERS ###
${HOME}/.config/i3/border.sh
