# Loop to add specified directories to the PATH if they exist
for dir in "$HOME/.bin" "$HOME/.local/bin" "$HOME/Applications" "/var/lib/flatpak/exports/bin" "$HOME/.spicetify" "/home/linuxbrew/.linuxbrew/bin"; do
  [ -d "$dir" ] && PATH="$dir:$PATH"
done

# Enable Wayland support in Firefox if the session type is Wayland
[ "$XDG_SESSION_TYPE" = "wayland" ] && export MOZ_ENABLE_WAYLAND=1

# If the desktop session is i3 or Hyprland, set the Qt platform theme to qt5ct
[ "$XDG_SESSION_DESKTOP" = "i3" -o "$XDG_SESSION_DESKTOP" = "Hyprland" ] && export QT_QPA_PLATFORMTHEME=qt5ct

# If the desktop session is i3 or Hyprland, set the Qt style override to Kvantum with the dark theme
[ "$XDG_SESSION_DESKTOP" = "i3" -o "$XDG_SESSION_DESKTOP" = "Hyprland" ] && export QT_STYLE_OVERRIDE=kvantum-dark

# If the desktop session is i3 or Hyprland, use the Nordic-bluish icon theme
[ "$XDG_SESSION_DESKTOP" = "i3" -o "$XDG_SESSION_DESKTOP" = "Hyprland" ]  && export ICON_THEME=Nordic-bluish

# If the desktop session is i3 or Hyprland, apply the Nordic GTK theme
[ "$XDG_SESSION_DESKTOP" = "i3" -o "$XDG_SESSION_DESKTOP" = "Hyprland" ]  && export GTK_THEME=Nordic

# If the desktop session is i3 or Hyprland, set the cursor theme to WhiteSur-cursors across GTK, Qt5, and Qt6 environments
[ "$XDG_SESSION_DESKTOP" = "i3" -o "$XDG_SESSION_DESKTOP" = "Hyprland" ]  && export CURSOR_THEME=WhiteSur-cursors && export QT_QT_CURSORTHEME=WhiteSur-cursors && export QT_QT5_CURSORTHEME=WhiteSur-cursors && export QT_QT6_CURSORTHEME=WhiteSur-cursors  && export XCURSOR_THEME=WhiteSur-cursors

# If the desktop session is i3 or Hyprland, configure the cursor size to 24 across GTK, Qt5, and Qt6 environments
[ "$XDG_SESSION_DESKTOP" = "i3" -o "$XDG_SESSION_DESKTOP" = "Hyprland" ]  && export CURSOR_SIZE=24 && export QT_QT_CURSORSIZE=24 && export QT_QT5_CURSORSIZE=24 && export QT_QT6_CURSORSIZE=24 && export XCURSOR_SIZE=24

# Additional environment variable settings can be configured below
export __GL_SHADER_DISK_CACHE=1  # Enable disk caching for GL shaders
export __GL_SHADER_DISK_CACHE_SIZE=100000000000  # Set the maximum size for the GL shader disk cache
export __GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1  # Prevent cleanup of the GL shader disk cache
export XDG_SCREENSHOTS_DIR="$HOME/Pictures/Screenshots"  # Directory for storing screenshots
