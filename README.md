# SteavenGamerYT's Dotfiles

![](https://github.com/SteavenGamerYT/dot-files/blob/main/screenshot.png?raw=true)

# Table of Contents

-[What Are Dotfiles?](https://github.com/SteavenGamerYT/dot-files#what-are-dotfiles)

-[My Window Manager Configs](https://github.com/SteavenGamerYT/dot-files#my-window-manager-configs)

-[Other Popular Configs Of Mine](https://github.com/SteavenGamerYT/dot-files#other-popular-configs-of-mine)

-[Using](https://github.com/SteavenGamerYT/dot-files#Using)

-[Install](https://github.com/SteavenGamerYT/dot-files#Install)

# What Are Dotfiles?
Dotfiles are the customization files that are used to personalize your Linux or other Unix-based system.  You can tell that a file is a dotfile because the name of the file will begin with a period–a dot!  The period at the beginning of a filename or directory name indicates that it is a hidden file or directory.  This repository contains my personal dotfiles.  They are stored here for convenience so that I may quickly access them on new machines or new installs.  Also, others may find some of my configurations helpful in customizing their own dotfiles.

# My Window Manager Configs
| My Window Manager Configs |
| ------------- |
| [i3](https://github.com/SteavenGamerYT/dot-files/blob/main/.config/i3/config)  |
| [Hyprland](https://github.com/SteavenGamerYT/dot-files/blob/main/.config/hypr/hyprland.conf)  |

# Other Popular Configs Of Mine
| Other Popular Configs Of Mine | Other Popular Configs Of Mine|
| ------------- |:-------------:|
| [bash](https://github.com/SteavenGamerYT/dot-files/blob/main/.bashrc)   | [zsh](https://github.com/SteavenGamerYT/dot-files/blob/main/.zshr) |
| [Bash + Zsh .steavengameryt](https://github.com/SteavenGamerYT/dot-files/blob/main/.steavengameryt)   | [fish](https://github.com/SteavenGamerYT/dot-files/blob/main/.config/fish) |
| [neofetch](https://github.com/SteavenGamerYT/dot-files/blob/main/.config/neofetch)   | [mangohud](https://github.com/SteavenGamerYT/dot-files/blob/main/.config/MangoHud) |
| [Polybar](https://github.com/SteavenGamerYT/dot-files/blob/main/.config/polybar)   | [waybar](https://github.com/SteavenGamerYT/dot-files/blob/main/.config/waybar) |
| [Rofi](https://github.com/SteavenGamerYT/dot-files/blob/main/.config/rofi)  | [kitty](https://github.com/SteavenGamerYT/dot-files/blob/main/.config/kitty) |
| [picom](https://github.com/SteavenGamerYT/dot-files/blob/main/.config/picom)   | [dunst](https://github.com/SteavenGamerYT/dot-files/blob/main/.config/dunst) |

# Using


to use them you need this packages installed 

## Hyprland Only (Packages)
```sh
yay -Syu --noconfirm --needed hyprland-nvidia rofi-lbonn-wayland-git pavucontrol nwg-look-bin dunst waybar-hyprland wlogout swaylock-effects pamixer noise-suppression-for-voice swaybg grimblast-git  playerctl wl-clipboard wf-recorder viewnior xdg-desktop-portal xdg-desktop-portal-hyprland-git
```

## I3 with ALMOST everything I use
```sh
yay -Syu --noconfirm --needed polybar picom i3 dunst optimus-manager-qt optimus-manager firefox brave-bin discord flatpak nemo nemo-fileroller network-manager-applet nemo kitty flameshot gnome-keyring polkit polkit-gnome sddm-git playerctl brightnessctl rofi xdg-desktop-portal xdg-desktop-portal-gtk pipewire lib32-pipewire wireplumber pipewire-alsa pipewire-jack lib32-pipewire-jack kvantum-theme-nordic-git nordic-theme papirus-icon-theme kvantum qt5ct qt6ct lxappearance nextcloud-client gnome-system-monitor gnome-disk-utility fwupd fwupd-efi flatseal starship zsh zsh-syntax-highlighting autojump zsh-autosuggestions neofetch xclip lolcat git github-desktop-bin visual-studio-code-bin xorg-xinit xorg-xinput xinput-gui pavucontrol opensshserver gvfs-smb find-the-command shell-color-scripts clipit numlockx
```


Installation, make sure that you don't have any of this files already first!, if so remove them

# Install
```
yay -Syu --noconfirm --needed starship zsh zsh-syntax-highlighting autojump zsh-autosuggestions neofetch xclip lolcat git
mkdir -p ~/Documents/GitHub
mkdir -p ~/.zsh/plugins/
mkdir ~/.ssh
mkdir ~/.config
git clone https://github.com/SteavenGamerYT/dot-files ~/Documents/GitHub/dot-files
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/plugins/powerlevel10k
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh/plugins/zsh-autocomplete
rm -rf ~/.steavengameryt ~/.bash-default ~/.zshrc ~/.bashrc ~/.profile ~/.zshenv ~/.p10k.zsh ~/.config/i3 ~/.config/picom ~/.config/neofetch ~/.config/polybar ~/.config/kitty ~/.config/BetterDiscord ~/.config/hypr ~/.config/waybar ~/.config/starship.toml ~/.config/ulauncher ~/.config/yay ~/.config/MangoHud ~/.ssh/config ~/.config/fish ~/.config/dunst ~/.config/swaylock ~/.config/rofi
ln -s ~/Documents/GitHub/dot-files/.steavengameryt ~/.steavengameryt
ln -s ~/Documents/GitHub/dot-files/.bash-default ~/.bash-default
ln -s ~/Documents/GitHub/dot-files/.zshrc ~/.zshrc
ln -s ~/Documents/GitHub/dot-files/.bashrc ~/.bashrc
ln -s ~/Documents/GitHub/dot-files/.profile ~/.profile
ln -s ~/Documents/GitHub/dot-files/.zshenv ~/.zshenv
ln -s ~/Documents/GitHub/dot-files/.p10k.zsh ~/.p10k.zsh
ln -s ~/Documents/GitHub/dot-files/.config/i3 ~/.config/i3
ln -s ~/Documents/GitHub/dot-files/.config/picom ~/.config/picom
ln -s ~/Documents/GitHub/dot-files/.config/neofetch/ ~/.config/neofetch
ln -s ~/Documents/GitHub/dot-files/.config/polybar ~/.config/polybar
ln -s ~/Documents/GitHub/dot-files/.config/kitty ~/.config/kitty
ln -s ~/Documents/GitHub/dot-files/.config/BetterDiscord ~/.config/BetterDiscord
ln -s ~/Documents/GitHub/dot-files/.config/hypr ~/.config/hypr
ln -s ~/Documents/GitHub/dot-files/.config/waybar ~/.config/waybar
ln -s ~/Documents/GitHub/dot-files/.config/starship.toml ~/.config/starship.toml
ln -s ~/Documents/GitHub/dot-files/.config/ulauncher ~/.config/ulauncher
ln -s ~/Documents/GitHub/dot-files/.config/yay ~/.config/yay
ln -s ~/Documents/GitHub/dot-files/.config/MangoHud ~/.config/MangoHud
ln -s ~/Documents/GitHub/dot-files/.ssh/config ~/.ssh/config
ln -s ~/Documents/GitHub/dot-files/.config/fish ~/.config/fish
ln -s ~/Documents/GitHub/dot-files/.config/dunst ~/.config/dunst
ln -s ~/Documents/GitHub/dot-files/.config/swaylock ~/.config/swaylock
ln -s ~/Documents/GitHub/dot-files/.config/rofi ~/.config/rofi
chsh -s $(which zsh)
```
