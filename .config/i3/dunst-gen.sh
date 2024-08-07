#!/bin/bash
# generates dunst config with custom colours
# and refreshes dunst

source ${HOME}/.cache/wal/colors.sh

sed 's/background = ".*"/background = "'${color0}'"/' ${HOME}/.config/dunst/dunstrc >${HOME}/.config/dunst/dunstrc.tmp
mv ${HOME}/.config/dunst/dunstrc.tmp ${HOME}/.config/dunst/dunstrc
sed 's/foreground = ".*"/foreground = "'${color7}'"/' ${HOME}/.config/dunst/dunstrc >${HOME}/.config/dunst/dunstrc.tmp
mv ${HOME}/.config/dunst/dunstrc.tmp ${HOME}/.config/dunst/dunstrc
sed 's/frame_color = ".*"/frame_color = "'${color3}'"/' ${HOME}/.config/dunst/dunstrc >${HOME}/.config/dunst/dunstrc.tmp
mv ${HOME}/.config/dunst/dunstrc.tmp ${HOME}/.config/dunst/dunstrc

pkill dunst

dunst &
