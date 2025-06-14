#!/usr/bin/env bash

TEMP=$(sensors | awk '/Tctl:/ { gsub(/\+|°C/, "", $2); print int($2); exit }')

if [ "$TEMP" -le 55 ]; then
    ICON=""
elif [ "$TEMP" -le 74 ]; then
    ICON=""
else
    ICON=""
fi

echo "$ICON ${TEMP}°C"