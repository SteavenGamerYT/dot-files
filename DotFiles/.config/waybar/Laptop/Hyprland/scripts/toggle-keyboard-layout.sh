#!/bin/bash

# Run hyprctl command to get keyboard information,
# extract active_keymap, convert to lowercase,
# and get the first two characters
keyboard_lang=$(hyprctl devices -j | jq -r '.keyboards[] | .active_keymap' | sed -n '6p' | cut -c1-2 | tr 'A-Z' 'a-z')

# Check if the keyboard language is "en"
if [ "$keyboard_lang" = "en" ]; then
    hyprctl keyword input:kb_layout ara,us
    hyprctl keyword input:kb_options grp:alt_shift_toggle
elif [ "$keyboard_lang" = "ar" ]; then
    hyprctl keyword input:kb_layout us,ara
    hyprctl keyword input:kb_options grp:alt_shift_toggle
else
    echo "Unknown keyboard language: $keyboard_lang"
fi