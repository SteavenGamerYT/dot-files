#!/bin/bash

# Define an array of sinks
sinks=(
    "alsa_output.usb-XiiSound_Technology_Corporation_H848_Wireless_headset-00.iec958-stereo"
    "alsa_output.usb-XiiSound_Technology_Corporation_H848_USB_Gaming_Headset-00.iec958-stereo"
    "alsa_output.pci-0000_03_00.1.pro-output-3"
)

# Get the current default sink
current_sink=$(pactl get-default-sink)

# Find the index of the current sink in the array
index=-1
for i in "${!sinks[@]}"; do
    if [[ "${sinks[$i]}" == "$current_sink" ]]; then
        index=$i
        break
    fi
done

# Calculate the next sink index (cycling back to 0 if at the end)
if [[ $index -ge 0 ]]; then
    next_index=$(( (index + 1) % ${#sinks[@]} ))
else
    next_index=0 # Default to the first sink if the current isn't found
fi

# Set the next sink as default
pactl set-default-sink "${sinks[$next_index]}"
