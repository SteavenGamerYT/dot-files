#!/usr/bin/env bash

STATE_FILE="$HOME/.cache/waybar_cpu_fan_cycle"
CPU_SCRIPT="$HOME/.config/waybar/Omar-PC/sway/scripts/cpu-usage.sh"
FAN_SCRIPT="$HOME/.config/waybar/Omar-PC/sway/scripts/fans.sh"
TEMP_SCRIPT="$HOME/.config/waybar/Omar-PC/sway/scripts/cpu-temp.sh"

# Create state file if missing
[ -f "$STATE_FILE" ] || echo "fan" > "$STATE_FILE"

STATE=$(<"$STATE_FILE")

CPU=$(bash "$CPU_SCRIPT")
FAN=$(bash "$FAN_SCRIPT")
TEMP=$(bash "$TEMP_SCRIPT")

case "$STATE" in
  fan)
    TEXT="$FAN"
    TOOLTIP=" $CPU\n$TEMP"
    ;;
  temp)
    TEXT="$TEMP"
    TOOLTIP=" $CPU\n$FAN"
    ;;
  usage|*)
    TEXT=" $CPU"
    TOOLTIP="$TEMP\n$FAN"
    ;;
esac

echo "{\"text\": \"$TEXT\", \"tooltip\": \"$TOOLTIP\"}"