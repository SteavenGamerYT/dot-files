#!/usr/bin/env bash

# Get current hostname
HOSTNAME=$(hostname)

# Kill all instances of waybar (if any)

kill $(pidof waybar)

if pgrep -x waybar > /dev/null; then
    syncthingtray --replace & disown
    exit
fi

# Check if hostname is valid
if [ "$HOSTNAME" != "Omar-PC" ] && [ "$HOSTNAME" != "Omar-GamingLaptop" ]; then
    echo "Invalid hostname: $HOSTNAME"
    echo "This script only supports Omar-PC, Omar-GamingLaptop"
    exit 1
fi

echo "Detected hostname: $HOSTNAME"

# Start Waybar
if [[ $XDG_SESSION_DESKTOP == "sway" ]]; then
    waybar -c ~/.config/waybar/$HOSTNAME/sway/config.jsonc -s ~/.config/waybar/$HOSTNAME/sway/style.css & disown
elif [[ $XDG_SESSION_DESKTOP == "Hyprland" ]]; then
    waybar -c ~/.config/waybar/$HOSTNAME/Hyprland/config.jsonc -s ~/.config/waybar/$HOSTNAME/Hyprland/style.css & disown
fi

# Wait a bit before starting other applications
sleep 5

# Start syncthingtray-qt6 and ensure it runs in the background
syncthingtray --replace & disown