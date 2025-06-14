#!/usr/bin/env bash

STATE_FILE="$HOME/.cache/waybar_cpu_fan_cycle"
CPU_SCRIPT="$HOME/.config/waybar/Omar-PC/sway/scripts/cpu-usage.sh"
FAN_SCRIPT="$HOME/.config/waybar/Omar-PC/sway/scripts/fans.sh"
TEMP_SCRIPT="$HOME/.config/waybar/Omar-PC/sway/scripts/cpu-temp.sh"
WATT_SCRIPT="$HOME/.config/waybar/Omar-PC/sway/scripts/cpu-watts.sh"  # <-- Make sure this exists!

# Create state file if missing
[ -f "$STATE_FILE" ] || echo "fan" > "$STATE_FILE"

STATE=$(<"$STATE_FILE")

CPU=$(bash "$CPU_SCRIPT")
FAN=$(bash "$FAN_SCRIPT")
TEMP=$(bash "$TEMP_SCRIPT")
WATT=$(bash "$WATT_SCRIPT")

case "$STATE" in
  fan)
    TEXT="$FAN"
    TOOLTIP=" $CPU\n$TEMP\n$WATT"
    ;;
  temp)
    TEXT="$TEMP"
    TOOLTIP=" $CPU\n$FAN\n$WATT"
    ;;
  watts)
    TEXT="$WATT"
    TOOLTIP=" $CPU\n$TEMP\n$FAN"
    ;;
  usage|*)
    TEXT=" $CPU"
    TOOLTIP="$TEMP\n$WATT\n$FAN"
    ;;
esac

echo "{\"text\": \"$TEXT\", \"tooltip\": \"$TOOLTIP\"}"
