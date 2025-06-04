# Loop to add specified directories to the PATH if they exist
for dir in "$HOME/.bin" "$HOME/.local/bin" "$HOME/Applications" "/var/lib/flatpak/exports/bin" "$HOME/.spicetify" "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin"; do
  [ -d "$dir" ] && PATH="$dir:$PATH"
done

# Enable Wayland support in Firefox if the session type is Wayland
 if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
  export MOZ_ENABLE_WAYLAND=1
fi

export XDG_SCREENSHOTS_DIR="$HOME/Pictures/Screenshots"  # Directory for storing screenshots
export EDITOR=nano

# Get the GPU model
GPU_MODEL=$(lspci | grep -i 'vga' | grep -oP '(?<=NVIDIA Corporation ).*')

# Check the GPU model and set the MANGOHUD_CONFIG variable
if [[ $GPU_MODEL == "TU116 [GeForce GTX 1650] (rev a1)" ]]; then
    export MANGOHUD_CONFIG="preset=5"
    export MOZ_DRM_DEVICE=/dev/dri/renderD128
elif [[ $GPU_MODEL == "TU117M [GeForce GTX 1650 Ti Mobile] (rev a1)" ]]; then
    export MANGOHUD_CONFIG="preset=7"
elif [[ $GPU_MODEL == "GA106M [GeForce RTX 3060 Mobile / Max-Q] (rev a1)" ]]; then
    export MANGOHUD_CONFIG="preset=9"
fi
export ELECTRON_OZONE_PLATFORM_HINT=auto



if [ "$XDG_SESSION_DESKTOP" = "none+i3" ] ||  [ "$XDG_SESSION_DESKTOP" = "i3" ] || [ "$XDG_SESSION_DESKTOP" = "sway" ] || [ "$XDG_SESSION_DESKTOP" = "Hyprland" ]; then
  
  # Set the GTK theme to use for applications
  export GTK_THEME=Nordic

  # Set the Xcursor theme
  export XCURSOR_THEME=WhiteSur-cursors
fi

if [ "$XDG_SESSION_DESKTOP" = "none+i3" ] || [ "$XDG_SESSION_DESKTOP" = "i3" ] || [ "$XDG_SESSION_DESKTOP" = "sway" ] || [ "$XDG_SESSION_DESKTOP" = "Hyprland" ] || [ "$XDG_SESSION_DESKTOP" = "gnome" ] || [ "$XDG_SESSION_DESKTOP" = "gnome-wayland" ]; then
  # Override the default style for QT applications 
  export QT_STYLE_OVERRIDE=kvantum
  # Set Kvantum theme
  export KVANTUM_THEME=Nordic-solid

  # Set the platform theme for QT applications
  export QT_QPA_PLATFORMTHEME=qt6ct

  # Set the icon theme for the desktop environment
  export ICON_THEME=Papirus-Dark
  export QT_QPA_ICONTHEME=Papirus-Dark

  # Set the cursor theme across various environments
  export CURSOR_THEME=WhiteSur-cursors
  export QT_QT_CURSORTHEME=WhiteSur-cursors
  export QT_QT5_CURSORTHEME=WhiteSur-cursors
  export QT_QT6_CURSORTHEME=WhiteSur-cursors

  # Define the cursor size for different environments
  export CURSOR_SIZE=24
  export XCURSOR_SIZE=24
fi

if [ "$XDG_SESSION_DESKTOP" = "gnome" ] || [ "$XDG_SESSION_DESKTOP" = "gnome-wayland" ]; then
  
  # Set the platform theme for QT applications
  export QT_QPA_PLATFORMTHEME=qt6ct
  
  # Set the GTK theme to use for applications
 # export GTK_THEME=adw-gtk3-dark

  # Set the Xcursor theme
  export XCURSOR_THEME=WhiteSur-cursors
fi

if [ "$XDG_SESSION_DESKTOP" = "KDE" ]; then

  # Set the GTK theme to use for applications
  export GTK_THEME=Nordic

  # Set the Xcursor theme
  export XCURSOR_THEME=WhiteSur-cursors
fi
