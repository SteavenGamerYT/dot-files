#!/bin/bash
sleep 5

# Check if X server is running
if ! command -v xrandr &> /dev/null; then
    echo "Error: xrandr command not found. Make sure you are running this script in a graphical environment."
    exit 1
fi

# Get the display variable
display=:0

# Check if it's a Dell G15 5510
if sudo lshw | grep -q "Dell G15 5510"; then
    DISPLAY=$display xrandr --output DP-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-3 --off --output HDMI-0 --off --output eDP-1-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1-1 --off --output HDMI-1-1 --off --output DP-1-2 --off --output HDMI-1-2 --off

# Check if it's an HP 350 G1
elif sudo lshw | grep -q "HP 350 G1"; then
    echo "ah"

# Check if it's an MS-7C96
elif sudo lshw | grep -q "MS-7C96"; then
    DISPLAY=$display xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1366x768 --pos 0x0 --rotate normal --output DP-0 --off --output DP-1 --primary --mode 1920x1080 --pos 0x768 --rotate normal
    
else
    echo "Unknown laptop model"
fi