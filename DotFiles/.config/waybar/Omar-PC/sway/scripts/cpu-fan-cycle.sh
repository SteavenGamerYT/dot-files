#!/usr/bin/env bash

STATE_FILE="$HOME/.cache/waybar_cpu_fan_cycle"
CPU_SCRIPT="$HOME/.config/waybar/Omar-PC/sway/scripts/cpu-usage.sh"
FAN_SCRIPT="$HOME/.config/waybar/Omar-PC/sway/scripts/fans.sh"
TEMP_SCRIPT="$HOME/.config/waybar/Omar-PC/sway/scripts/cpu-temp.sh"
WATT_SCRIPT="$HOME/.config/waybar/Omar-PC/sway/scripts/cpu-watts.sh"
CLOCKS_SCRIPT="$HOME/.config/waybar/Omar-PC/sway/scripts/cpu-clocks.sh"  # corrected

# Create state file if missing
[ -f "$STATE_FILE" ] || echo "fan" > "$STATE_FILE"

STATE=$(<"$STATE_FILE")

CPU=$(bash "$CPU_SCRIPT")
FAN=$(bash "$FAN_SCRIPT")
TEMP=$(bash "$TEMP_SCRIPT")
WATT=$(bash "$WATT_SCRIPT")
CLOCKS=$(bash "$CLOCKS_SCRIPT" | grep -v '^$' | sed 's/"/\\"/g' | sed ':a;N;$!ba;s/\n/\\n/g')

case "$STATE" in
  fan)
    TEXT="$FAN"
    TOOLTIP=" $CPU\n$TEMP\n$WATT\n$CLOCKS"
    ;;
  temp)
    TEXT="$TEMP"
    TOOLTIP=" $CPU\n$FAN\n$WATT\n$CLOCKS"
    ;;
  watts)
    TEXT="$WATT"
    TOOLTIP=" $CPU\n$TEMP\n$FAN\n$CLOCKS"
    ;;
  usage|*)
    TEXT=" $CPU"
    TOOLTIP="$TEMP\n$WATT\n$FAN\n$CLOCKS"
    ;;
esac

echo "{\"text\": \"$TEXT\", \"tooltip\": \"$TOOLTIP\"}"
