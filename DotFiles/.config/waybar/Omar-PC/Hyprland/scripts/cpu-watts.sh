#!/usr/bin/env bash

# Get the power value - METHOD THAT ACTUALLY WORKS
power_w=$(sudo ryzenadj --info 2>/dev/null | 
          awk -F'|' '/PPT VALUE FAST/ {gsub(/[^0-9.]/, "", $3); print $3}')

# Format the output
echo "󰚥 ${power_w:-0}W"