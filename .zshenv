skip_global_compinit=1
#export MANGOHUD=1
#export QT_STYLE_OVERRIDE=kvantum
#export QT_QPA_PLATFORMTHEME=qt5ct
#export QT_QPA_PLATFORM=xcb
export GTK_THEME=Nordic
export QT_QPA_PLATFORMTHEME="qt5ct"
export ICON_THEME=Papirus
# User specific environment and startup programs
if [[ "$(tty)" = "/dev/tty1" ]]; then 
exec Hyprland
fi

