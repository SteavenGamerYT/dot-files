# [What Are Dotfiles?]([What Are Dotfiles? ](https://github.com/SteavenGamerYT/dot-files/blob/main/README.md#dotfiles-are-the-customization-files-that-are-used-to-personalize-your-linux-or-other-unix-based-system--you-can-tell-that-a-file-is-a-dotfile-because-the-name-of-the-file-will-begin-with-a-perioda-dot--the-period-at-the-beginning-of-a-filename-or-directory-name-indicates-that-it-is-a-hidden-file-or-directory--this-repository-contains-my-personal-dotfiles--they-are-stored-here-for-convenience-so-that-i-may-quickly-access-them-on-new-machines-or-new-installs--also-others-may-find-some-of-my-configurations-helpful-in-customizing-their-own-dotfiles)"What Are Dotfiles?")

### Dotfiles are the customization files that are used to personalize your Linux or other Unix-based system.  You can tell that a file is a dotfile because the name of the file will begin with a period–a dot!  The period at the beginning of a filename or directory name indicates that it is a hidden file or directory.  This repository contains my personal dotfiles.  They are stored here for convenience so that I may quickly access them on new machines or new installs.  Also, others may find some of my configurations helpful in customizing their own dotfiles.

# DOT Files
My Dot Files


# Using


to use them you need this packages installed 


`yay -Syu --noconfirm --needed starship zsh zsh-syntax-highlighting autojump zsh-autosuggestions neofetch xclip lolcat i3 hyprland-nvidia polkit-gnome ffmpeg rofi-lbonn-wayland-git pavucontrol papirus-icon-theme nwg-look-bin dunst waybar-hyprland wlogout swaylock-effects pamixer noise-suppression-for-voice thunar-archive-plugin kitty swaybg grimblast-git ffmpegthumbnailer tumbler playerctl wl-clipboard wf-recorder viewnior feh betterlockscreen brightnessctl nm-applet lightdm-gtk-greeter lightdm xdg-desktop-portal xdg-desktop-portal-hyprland-git xdg-desktop-portal-kde fwupd fwupd-efi kde-gtk-config plasma-desktop plasma-pa plasma-meta polybar`

`yay -Syu --noconfirm --needed polybar picom i3 dunst optimus-manager-qt optimus-manager firefox brave-bin discord flatpak nemo nemo-fileroller network-manager-applet nemo kitty flameshot gnome-keyring polkit polkit-gnome sddm-git playerctl brightnessctl rofi xdg-desktop-portal xdg-desktop-portal-gtk pipewire lib32-pipewire wireplumber pipewire-alsa pipewire-jack lib32-pipewire-jack kvantum-theme-nordic-git nordic-theme papirus-icon-theme kvantum qt5ct qt6ct lxappearance nextcloud-client gnome-system-monitor gnome-disk-utility fwupd fwupd-efi flatseal starship zsh zsh-syntax-highlighting autojump zsh-autosuggestions neofetch xclip lolcat git github-desktop-bin visual-studio-code-bin xorg-xinit xorg-xinput xinput-gui pavucontrol opensshserver gvfs-smb find-the-command shell-color-scripts clipit numlockx`


Installation, make sure that you don't have any of this files already first!, if so remove them


```
yay -Syu --noconfirm --needed starship zsh zsh-syntax-highlighting autojump zsh-autosuggestions neofetch xclip lolcat git
mkdir -p ~/Documents/GitHub
mkdir -p ~/.zsh/plugins/
mkdir ~/.ssh
mkdir ~/.config
git clone https://github.com/SteavenGamerYT/dot-files ~/Documents/GitHub/dot-files
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/plugins/powerlevel10k
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh/plugins/zsh-autocomplete
rm -rf ~/.steavengameryt
rm -rf ~/.bash-default
rm -rf ~/.zshrc
rm -rf ~/.bashrc
rm -rf ~/.profile
rm -rf ~/.zshenv
rm -rf ~/.p10k.zsh
rm -rf ~/.config/i3
rm -rf ~/.config/picom
rm -rf ~/.config/neofetch
rm -rf ~/.config/polybar
rm -rf ~/.config/kitty
rm -rf ~/.config/BetterDiscord
rm -rf ~/.config/hypr
rm -rf ~/.config/waybar
rm -rf ~/.config/starship.toml
rm -rf ~/.config/ulauncher
rm -rf ~/.config/yay
rm -rf ~/.config/MangoHud
rm -rf ~/.ssh/config
rm -rf ~/.config/fish
rm -rf ~/.config/dunst
rm -rf ~/.config/swaylock
rm -rf ~/.config/rofi
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
