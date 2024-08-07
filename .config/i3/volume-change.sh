#!/bin/bash

while getopts ":udm" opt; do
    case ${opt} in
    u)
        pactl set-sink-volume @DEFAULT_SINK@ +5%
        VOLUME=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{match($0, /[0-9]+%/, a); print a[0]}')
        notify-send -h byte:urgency:0 $VOLUME
        ;;
    d)
        pactl set-sink-volume @DEFAULT_SINK@ -5%
        VOLUME=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{match($0, /[0-9]+%/, a); print a[0]}')
        notify-send -h byte:urgency:0 $VOLUME
        ;;
    m)
        pactl set-sink-mute @DEFAULT_SINK@ toggle
        notify-send -h byte:urgency:0 "MUTED"
        ;;
    esac
done
