# Loop to add specified directories to the PATH if they exist
for dir in "$HOME/.bin" "$HOME/.local/bin" "$HOME/Applications" "/var/lib/flatpak/exports/bin" "$HOME/.spicetify" "/home/linuxbrew/.linuxbrew/bin"; do
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
fi
export ELECTRON_OZONE_PLATFORM_HINT=auto



if [ "$XDG_SESSION_DESKTOP" = "i3" ] || [ "$XDG_SESSION_DESKTOP" = "sway" ] || [ "$XDG_SESSION_DESKTOP" = "Hyprland" ]; then
  
  # Set the GTK theme to use for applications
  export GTK_THEME=Fluent-Dark

  # Set the Xcursor theme
  export XCURSOR_THEME=Fluent-cursors
fi

if [ "$XDG_SESSION_DESKTOP" = "i3" ] || [ "$XDG_SESSION_DESKTOP" = "sway" ] || [ "$XDG_SESSION_DESKTOP" = "Hyprland" ] || [ "$XDG_SESSION_DESKTOP" = "gnome" ] || [ "$XDG_SESSION_DESKTOP" = "gnome-wayland" ]; then
  # Override the default style for QT applications 
  export QT_STYLE_OVERRIDE=kvantum
  # Set Kvantum theme
  export KVANTUM_THEME=FluentDark

  # Set the platform theme for QT applications
  export QT_QPA_PLATFORMTHEME=qt6ct

  # Set the icon theme for the desktop environment
  export ICON_THEME=Fluent-dark
  export QT_QPA_ICONTHEME=Fluent-dark

  # Set the cursor theme across various environments
  export CURSOR_THEME=Fluent-cursors
  export QT_QT_CURSORTHEME=Fluent-cursors
  export QT_QT5_CURSORTHEME=Fluent-cursors
  export QT_QT6_CURSORTHEME=Fluent-cursors

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
  export XCURSOR_THEME=Adwaita
fi

if [ "$XDG_SESSION_DESKTOP" = "KDE" ]: then

  # Set the GTK theme to use for applications
  export GTK_THEME=breeze-dark

  # Set the Xcursor theme
  export XCURSOR_THEME=breeze_cursors
fi