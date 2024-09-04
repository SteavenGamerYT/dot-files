# Loop to add specified directories to the PATH if they exist
for dir in "$HOME/.bin" "$HOME/.local/bin" "$HOME/Applications" "/var/lib/flatpak/exports/bin" "$HOME/.spicetify" "/home/linuxbrew/.linuxbrew/bin"; do
  [ -d "$dir" ] && PATH="$dir:$PATH"
done

# Enable Wayland support in Firefox if the session type is Wayland
 if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
  export MOZ_ENABLE_WAYLAND=1
#  export ELECTRON_OZONE_PLATFORM_HINT=wayland
fi

if [ "$XDG_SESSION_DESKTOP" = "i3" ] || [ "$XDG_SESSION_DESKTOP" = "sway" || [ "$XDG_SESSION_DESKTOP" = "Hyprland" ]; then
  # Set the platform theme for QT applications
  export QT_QPA_PLATFORMTHEME=qt5ct

  # Override the default style for QT applications
  export QT_STYLE_OVERRIDE=kvantum-dark

  # Set Kvantum theme
  export KVANTUM_THEME=Nordic

  # Set the icon theme for the desktop environment
  export ICON_THEME=Papirus-Dark
  export QT_QPA_ICONTHEME=Papirus-Dark

  # Set the GTK theme to use for applications
  export GTK_THEME=Nordic

  # Set the cursor theme across various environments
  export CURSOR_THEME=WhiteSur-cursors
  export QT_QT_CURSORTHEME=WhiteSur-cursors
  export QT_QT5_CURSORTHEME=WhiteSur-cursors
  export QT_QT6_CURSORTHEME=WhiteSur-cursors
  export XCURSOR_THEME=WhiteSur-cursors

  # Define the cursor size for different environments
  export CURSOR_SIZE=24
  export XCURSOR_SIZE=24
fi

export XDG_SCREENSHOTS_DIR="$HOME/Pictures/Screenshots"  # Directory for storing screenshots
export EDITOR=nano

#!/bin/bash

# Get the GPU model
GPU_MODEL=$(lspci | grep -i 'vga' | grep -oP '(?<=NVIDIA Corporation ).*')

# Check the GPU model and set the MANGOHUD_CONFIG variable
if [[ $GPU_MODEL == "TU116 [GeForce GTX 1650] (rev a1)" ]]; then
    export MANGOHUD_CONFIG="preset=2"
elif [[ $GPU_MODEL == "TU117M [GeForce GTX 1650 Ti Mobile] (rev a1)" ]]; then
    export MANGOHUD_CONFIG="preset=3"
fi
