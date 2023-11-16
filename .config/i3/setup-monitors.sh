#!/bin/bash
sleep 5

# Check if both DP-0 and eDP-1-1 are available
if xrandr | grep -q "DP-0 connected" && xrandr | grep -q "eDP-1-1 connected"; then
    xrandr --output DP-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-3 --off --output HDMI-0 --off --output eDP-1-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1-1 --off --output HDMI-1-1 --off --output DP-1-2 --off --output HDMI-1-2 --off
elif xrandr | grep -q "eDP-1-1 connected"; then
    xrandr --output DP-0 --off --output DP-1 --off --output DP-2 --off --output DP-3 --off --output HDMI-0 --off --output eDP-1-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-1 --off --output HDMI-1-1 --off --output DP-1-2 --off --output HDMI-1-2 --off
else
    echo "Neither DP-0 nor eDP-1-1 found or both outputs not detected."
fi