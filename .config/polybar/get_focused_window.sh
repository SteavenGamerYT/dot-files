#!/bin/bash

ACTIVE_WINDOW=$(xdotool getactivewindow)

if [ -z "$ACTIVE_WINDOW" ]; then
    # No focused window, exit without printing anything
    exit 0
fi

WM_DESKTOP=$(xdotool getwindowfocus)

if [ "$WM_DESKTOP" == "Enter WM_DESKTOP value here" ]; then
    # Exit the script without printing anything
    exit 0
elif [ "$WM_DESKTOP" != "1883" ]; then
    WM_CLASS=$(xprop -id "$ACTIVE_WINDOW" WM_CLASS | awk 'NF {print $NF}' | sed 's/"/ /g')
    WM_NAME=$(xprop -id "$ACTIVE_WINDOW" WM_NAME | cut -d '=' -f 2 | awk -F\" '{ print $2 }')

    if [ "$WM_CLASS" == 'Enter WM_CLASS value here' ]; then
        echo "%{F#ffffff}Custom name%{u-}"
    elif [ "$WM_NAME" == 'Enter WM_NAME value here' ]; then
        echo "%{F#ffffff}Custom name%{u-}"
    else
        echo "%{F#ffffff}$WM_NAME%{u-}"
    fi
fi
