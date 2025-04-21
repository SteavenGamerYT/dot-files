#!/bin/bash

if [ -d /sys/class/power_supply/BAT0 ]; then
    
    input-remapper-control --command start --device "Asus Keyboard" --preset "right arrow key is broken so i remapped keys"

else
    xrandr \
    --output HDMI-2 --mode 1366x768 --pos 0x0 --rotate normal --rate 60 \
    --output HDMI-1 --mode 1920x1080 --pos 0x768 --rotate normal --primary --rate 60

    input-remapper-control --command start --device "SINOWEALTH Wired Gaming Mouse" --preset "mouse extra buttons"
fi

sleep 2
pkill redshift

sleep 2
redshift -l 30.0444:31.2357
