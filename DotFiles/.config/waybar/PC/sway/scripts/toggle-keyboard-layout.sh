#!/bin/bash

# Run hyprctl command to get keyboard information,
# extract active_keymap, convert to lowercase,
# and get the first two characters
keyboard_lang=$(~/.config/waybar/sway/scripts/get-lang.sh)

# Check if the keyboard language is "en"
if [ "$keyboard_lang" = "us" ]; then
    swaymsg input type:keyboard xkb_layout "eg,us"
    swaymsg input type:keyboard xkb_options "grp:alt_shift_toggle"
    swaymsg input type:keyboard xkb_numlock enabled
elif [ "$keyboard_lang" = "eg" ]; then
    swaymsg input type:keyboard xkb_layout "us,eg"
    swaymsg input type:keyboard xkb_options "grp:alt_shift_toggle"
    swaymsg input type:keyboard xkb_numlock enabled
else
    echo "Unknown keyboard language: $keyboard_lang"
fi