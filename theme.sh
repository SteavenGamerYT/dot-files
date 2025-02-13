#!/bin/bash
sed -i 's/^\(\s*\)export ICON_THEME=.*/\1export ICON_THEME=Papirus-Dark/' ~/DotFiles/.profile
sed -i 's/^\(\s*\)export QT_QPA_ICONTHEME=.*/\1export QT_QPA_ICONTHEME=Papirus-Dark/' ~/DotFiles/.profile
sed -i 's/^\(\s*\)export CURSOR_THEME=.*/\1export CURSOR_THEME=WhiteSur-cursors/' ~/DotFiles/.profile
sed -i 's/^\(\s*\)export QT_QT_CURSORTHEME=.*/\1export QT_QT_CURSORTHEME=WhiteSur-cursors/' ~/DotFiles/.profile
sed -i 's/^\(\s*\)export QT_QT5_CURSORTHEME=.*/\1export QT_QT5_CURSORTHEME=WhiteSur-cursors/' ~/DotFiles/.profile
sed -i 's/^\(\s*\)export QT_QT6_CURSORTHEME=.*/\1export QT_QT6_CURSORTHEME=WhiteSur-cursors/' ~/DotFiles/.profile
sed -i 's/^\(\s*\)export XCURSOR_THEME=.*/\1export XCURSOR_THEME=WhiteSur-cursors/' ~/DotFiles/.profile
sed -i 's/^\(\s*\)export CURSOR_THEME=.*/\1export CURSOR_THEME=WhiteSur-cursors/' ~/DotFiles/.profile
sed -i 's/^\(\s*\)export GTK_THEME=.*/\1export GTK_THEME=Nordic/' ~/DotFiles/.profile
sed -i 's/^\(\s*\)export KVANTUM_THEME=.*/\1export KVANTUM_THEME=Nordic-solid/' ~/DotFiles/.profile
sed -i 's/^\(\s*\)theme=.*/\1theme=Nordic-Solid/' ~/DotFiles/.config/Kvantum/kvantum.kvconfig
sed -i 's|\(^\s*source = ~/.config/hypr/theme-\)[^/]*|\1Nordic|' ~/DotFiles/.config/hypr/hyprland.conf
sed -i 's|^include ~/.config/sway/theme-.*$|include ~/.config/sway/theme-nordic|' ~/.config/sway/config
sed -i 's/^\(\s*\)icon-theme: ".*/\1icon-theme: "Papirus-Dark";/' ~/DotFiles/.config/rofi/config.rasi
sed -i 's|\(@import "~/.config/rofi/colors/\)[^"]*|\1nord.rasi|' ~/DotFiles/.config/rofi/launcher/shared/colors.rasi
sed -i 's|\(@import "~/.config/rofi/colors/\)[^"]*|\1nord.rasi|' ~/DotFiles/.config/rofi/powermenu/shared/colors.rasi
sed -i 's|\(include ./\)[^ ]*|\1nord.conf|' ~/DotFiles/.config/kitty/kitty.conf
cp ~/DotFiles/.config/waybar/PC/Hyprland/style-nordic.css ~/DotFiles/.config/waybar/PC/Hyprland/style.css
cp ~/DotFiles/.config/waybar/PC/sway/style-nordic.css ~/DotFiles/.config/waybar/PC/sway/style.css
cp ~/DotFiles/.config/waybar/Laptop/Hyprland/style-nordic.css ~/DotFiles/.config/waybar/Laptop/Hyprland/style.css
cp ~/DotFiles/.config/waybar/Laptop/sway/style-nordic.css ~/DotFiles/.config/waybar/Laptop/sway/style.css
hyprctl setcursor WhiteSur-cursors 24
gsettings set org.gnome.desktop.interface gtk-theme 'Nordic'
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
gsettings set org.gnome.desktop.interface cursor-theme 'WhiteSur-cursors'
gsettings set org.gnome.desktop.interface cursor-size 24
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface font-name 'Roboto Regular 12'
hyprctl reload
swayctl reload