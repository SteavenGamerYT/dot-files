#!/bin/bash

# Get the active window ID and suppress errors
ACTIVE_WINDOW=$(xdotool getactivewindow 2>/dev/null)

# Check if we got a valid active window ID
if [ -z "$ACTIVE_WINDOW" ]; then
    echo " "  # Output a space if no active window
    exit 0
fi

# Get the current window focus and suppress errors
WM_DESKTOP=$(xdotool getwindowfocus 2>/dev/null)

# Check if we got a valid WM_DESKTOP value
if [ -z "$WM_DESKTOP" ]; then
    echo "~ "  # Output a space if WM_DESKTOP is empty
    exit 0
fi

# Exit if WM_DESKTOP matches the specified value
if [ "$WM_DESKTOP" == "Enter WM_DESKTOP value here" ]; then
    echo " "  # Output a space if WM_DESKTOP matches the specified value
    exit 0
elif [ "$WM_DESKTOP" != "1883" ]; then
    # Fetch WM_CLASS and WM_NAME, suppress errors
    WM_CLASS=$(xprop -id "$ACTIVE_WINDOW" WM_CLASS 2>/dev/null | awk 'NF {print $NF}' | sed 's/"/ /g')
    WM_NAME=$(xprop -id "$ACTIVE_WINDOW" WM_NAME 2>/dev/null | cut -d '=' -f 2 | awk -F\" '{ print $2 }')

    # Check if both WM_CLASS and WM_NAME are successfully retrieved
    if [ -z "$WM_CLASS" ] || [ -z "$WM_NAME" ]; then
        echo " "  # Output a space if WM_CLASS or WM_NAME are empty
        exit 0
    fi

    # Print nothing if WM_CLASS or WM_NAME match specified values
    if [ "$WM_CLASS" == 'Enter WM_CLASS value here' ] || [ "$WM_NAME" == 'Enter WM_NAME value here' ]; then
        echo " "  # Output a space if WM_CLASS or WM_NAME match specified values
        exit 0
    else
        # Print window name if conditions are met
        echo "%{F#ffffff}$WM_NAME%{u-}"
    fi
fi
