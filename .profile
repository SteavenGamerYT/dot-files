# Loop to add specified directories to the PATH if they exist
for dir in "$HOME/.bin" "$HOME/.local/bin" "$HOME/Applications" "/var/lib/flatpak/exports/bin" "$HOME/.spicetify" "/home/linuxbrew/.linuxbrew/bin"; do
  [ -d "$dir" ] && PATH="$dir:$PATH"
done

# Enable Wayland support in Firefox if the session type is Wayland
[ "$XDG_SESSION_TYPE" = "wayland" ] && export MOZ_ENABLE_WAYLAND=1

# Check if the desktop session is i3 and set the Qt platform theme accordingly
[ "$XDG_SESSION_DESKTOP" = "i3" ] && export QT_QPA_PLATFORMTHEME=qt5ct

# Set the Qt style override to Kvantum when using the i3 desktop environment
[ "$XDG_SESSION_DESKTOP" = "i3" ] && export QT_STYLE_OVERRIDE=kvantum-dark

# If the desktop session is i3, set the icon theme to Nordic-bluish
[ "$XDG_SESSION_DESKTOP" = "i3" ] && export ICON_THEME=Nordic-bluish

# If the desktop session is i3, set the GTK theme to Nordic
[ "$XDG_SESSION_DESKTOP" = "i3" ] && export GTK_THEME=Nordic

# If the desktop session is i3, set the cursor theme to WhiteSur-cursors
[ "$XDG_SESSION_DESKTOP" = "i3" ] && export CURSOR_THEME=WhiteSur-cursors

# If the desktop session is i3, set the cursor size to 24
[ "$XDG_SESSION_DESKTOP" = "i3" ] && export CURSOR_SIZE=24

# Additional environment variable settings can be configured below
export __GL_SHADER_DISK_CACHE=1  # Enable disk caching for GL shaders
export __GL_SHADER_DISK_CACHE_SIZE=100000000000  # Set the maximum size for the GL shader disk cache
export __GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1  # Prevent cleanup of the GL shader disk cache
export XDG_SCREENSHOTS_DIR="$HOME/Pictures/Screenshots"  # Directory for storing screenshots
