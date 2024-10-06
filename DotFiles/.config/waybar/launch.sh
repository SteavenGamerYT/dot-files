#!/bin/bash
killall -q waybar

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

sleep 5
syncthingtray-qt6 --replace & disown