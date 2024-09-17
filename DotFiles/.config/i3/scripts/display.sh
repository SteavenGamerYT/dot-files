#!/bin/bash
xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1366x768 --pos 0x0 --rotate normal --output DP-1 --primary --mode 1920x1080 --pos 0x768 --rotate normal
xrandr --output DVI-D-0 --mode 1920x1080 --pos 0x768 --rotate normal --output HDMI-0 --mode 1366x768 --pos 0x0 --rotate normal --output DP-1 --primary --mode 1920x1080 --pos 0x768 --rotate normal

sleep 2
pkill redshift

sleep 2
redshift -l 30.0444:31.2357
