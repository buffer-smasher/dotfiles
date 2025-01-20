#!/bin/bash

### WALLPAPER ###
# single image or cycle folder
# wallpaper="$HOME/Pictures/Backgrounds/aenami/alena-aenami-rooflinesgirl-1k-2.jpg"
wallpaper=$(shuf -e -n1 /home/drew/Pictures/Backgrounds/aenami/*)

feh --bg-scale $wallpaper
wal -i $wallpaper
source "${HOME}/.cache/wal/colors.sh"

### NOTIFICATIONS ###
bash ${HOME}/.config/i3/dunst-gen.sh &

### GLava ###
sed -E -i "s/#define COLOR \(#[0-9a-fA-F]{6} \* GRADIENT\)/#define COLOR \(${color5} \* GRADIENT\)/" "${HOME}/.config/glava/bars.glsl"

### BORDERS ###
${HOME}/.config/i3/border.sh &

### RGB ###
COLOUR=${color4:1}
openrgb --mode direct -c $COLOUR
openrgb -d 3 --mode static -c $COLOUR
