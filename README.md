# SteavenGamerYT's Dotfiles

![](https://github.com/SteavenGamerYT/dot-files/blob/main/Screenshots/i3.png?raw=true)

![](https://github.com/SteavenGamerYT/dot-files/blob/main/Screenshots/sway.png?raw=true)

![](https://github.com/SteavenGamerYT/dot-files/blob/main/Screenshots/hyprland.png?raw=true)

# Table of Contents

* [What Are Dotfiles?](https://github.com/SteavenGamerYT/dot-files#what-are-dotfiles)

* [My Window Manager Configs](https://github.com/SteavenGamerYT/dot-files#my-window-manager-configs)

* [Other Popular Configs Of Mine](https://github.com/SteavenGamerYT/dot-files#other-popular-configs-of-mine)

* [Using](https://github.com/SteavenGamerYT/dot-files#Using)

* [Install](https://github.com/SteavenGamerYT/dot-files#Install)

# What Are Dotfiles?
Dotfiles are the customization files that are used to personalize your Linux or other Unix-based system.  You can tell that a file is a dotfile because the name of the file will begin with a period–a dot!  The period at the beginning of a filename or directory name indicates that it is a hidden file or directory.  This repository contains my personal dotfiles.  They are stored here for convenience so that I may quickly access them on new machines or new installs.  Also, others may find some of my configurations helpful in customizing their own dotfiles.

# My Window Manager Configs
| [i3](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.config/i3/config) |
| :---------------------------------------------------------------------- |
| [Sway](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.config/sway/config) |
| [Hyprland](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.config/hypr/hyprland.conf) |
| [Bspwm](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.config/bspwm/bspwmrc) |

# Other Popular Configs Of Mine
| [bash](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.bashrc)   | [zsh](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.zshr)    |
| :---------------------------------------------------------------------- | :-------------------------------------------------------------------- |
| [Bash + Zsh .steavengameryt](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.steavengameryt) | [fish](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.config/fish) |
| [neofetch](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.config/neofetch)   | [mangohud](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.config/MangoHud) |
| [Polybar](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.config/polybar)   | [waybar](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.config/waybar) |
| [Rofi](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.config/rofi)     | [kitty](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.config/kitty) |
| [picom](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.config/picom)   | [alacritty](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.config/alacritty) |
| [dunst](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.config/dunst)   | [swaync](https://github.com/SteavenGamerYT/dot-files/blob/main/DotFiles/.config/swaync) |


Installation, make sure that you don't have any of this files already first!, if so remove them

# Install
run install.sh

```sh
gsettings set org.gnome.desktop.interface cursor-theme 'WhiteSur-cursors'
gsettings set org.gnome.desktop.interface gtk-theme 'Nordic'
gsettings set org.gnome.desktop.interface cursor-size 24
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
hyprctl setcursor WhiteSur-cursors 24
gsettings set org.gnome.nautilus.preferences always-use-location-entry true
```
