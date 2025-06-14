#!/usr/bin/env bash

STATE_FILE="$HOME/.cache/waybar_cpu_fan_cycle"
[ -f "$STATE_FILE" ] || echo "fan" > "$STATE_FILE"

STATE=$(<"$STATE_FILE")

case "$STATE" in
  fan)   echo "temp" > "$STATE_FILE" ;;
  temp)  echo "usage" > "$STATE_FILE" ;;
  usage|*) echo "fan" > "$STATE_FILE" ;;
esac