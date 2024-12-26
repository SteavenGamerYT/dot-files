#!/bin/bash

# Kill all instances of waybar (if any)
killall -q waybar

# Determine system configuration based on battery presence and desktop environment
if [ -d /sys/class/power_supply/BAT0 ]; then
    if [[ $XDG_SESSION_DESKTOP == "sway" ]]; then
        waybar -c ~/.config/waybar/Laptop/sway/config.jsonc -s ~/.config/waybar/Laptop/sway/style.css & disown
    elif [[ $XDG_SESSION_DESKTOP == "Hyprland" ]]; then
        waybar -c ~/.config/waybar/Laptop/Hyprland/config.jsonc -s ~/.config/waybar/Laptop/Hyprland/style.css & disown
    fi
else
    if [[ $XDG_SESSION_DESKTOP == "sway" ]]; then
        waybar -c ~/.config/waybar/PC/sway/config.jsonc -s ~/.config/waybar/PC/sway/style.css & disown
    elif [[ $XDG_SESSION_DESKTOP == "Hyprland" ]]; then
        waybar -c ~/.config/waybar/PC/Hyprland/config.jsonc -s ~/.config/waybar/PC/Hyprland/style.css & disown
    fi
fi

# Wait a bit before starting other applications
sleep 5

# Start syncthingtray-qt6 and ensure it runs in the background
syncthingtray-qt6 --replace & disown

# Check if qbittorrent is already running, otherwise start it
if ! pgrep -x qbittorrent > /dev/null; then
    qbittorrent & disown
fi