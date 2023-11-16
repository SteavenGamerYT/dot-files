#!/bin/bash

# Find the touchpad device ID
touchpad_id=$(xinput list | grep "Touchpad" | grep -oP 'id=\K\d+')

# Check if touchpad_id is not empty
if [ -n "$touchpad_id" ]; then
    # Enable tapping and natural scrolling for the touchpad
    xinput --set-prop "$touchpad_id" "libinput Tapping Enabled" 1
    xinput --set-prop "$touchpad_id" "libinput Natural Scrolling Enabled" 1
    # Uncomment the line below if you want to set Natural Scrolling as default
    # xinput --set-prop "$touchpad_id" "libinput Natural Scrolling Enabled Default" 1
fi

# Set mouse acceleration for the SINOWEALTH Wired Gaming Mouse
mouse_id=$(xinput list | grep "SINOWEALTH Wired Gaming Mouse" | grep -oP 'id=\K\d+')

# Check if mouse_id is not empty
if [ -n "$mouse_id" ]; then
    xinput --set-prop "$mouse_id" "libinput Accel Profile Enabled" 0, 1
fi

# Set mouse acceleration for all pointer devices
for id in $(xinput list | grep "pointer" | cut -d '=' -f 2 | cut -f 1); do
    xinput --set-prop "$id" 'libinput Accel Profile Enabled' 0, 1
done
