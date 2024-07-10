#!/bin/bash

# Terminate already running bar instances
killall -q polybar
killall -q syncthingtray
killall -q syncthingtray-qt6
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar --config-path=~/.config/polybar/config.ini steaven 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."

wait 20

syncthingtray-qt6 & disown

