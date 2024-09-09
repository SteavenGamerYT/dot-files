#!/bin/bash
killall -q waybar

if [[ $XDG_SESSION_DESKTOP == "sway" ]]; then
    waybar -c ~/.config/waybar/sway/config.jsonc -s ~/.config/waybar/sway/style.css & disown
elif [[ $XDG_SESSION_DESKTOP == "Hyprland" ]]; then
    waybar -c ~/.config/waybar/Hyprland/config.jsonc -s ~/.config/waybar/Hyprland/style.css & disown
fi

sleep 5
syncthingtray-qt6 --replace & disown