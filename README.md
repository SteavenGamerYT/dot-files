# DOT Files
My Dot Files


# Using


to use them you need this packages installed 


`yay -Syu starship zsh zsh-syntax-highlighting autojump zsh-autosuggestions neofetch xclip lolcat i3 hyprland-nvidia polkit-gnome ffmpeg rofi-lbonn-wayland-git pavucontrol papirus-icon-theme nwg-look-bin dunst waybar-hyprland wlogout swaylock-effects pamixer noise-suppression-for-voice thunar-archive-plugin kitty swaybg grimblast-git ffmpegthumbnailer tumbler playerctl wl-clipboard wf-recorder viewnior feh betterlockscreen brightnessctl nm-applet lightdm-gtk-greeter lightdm xdg-desktop-portal xdg-desktop-portal-hyprland-git xdg-desktop-portal-kde fwupd fwupd-efi kde-gtk-config plasma-desktop plasma-pa plasma-meta polybar`


Installation, make sure that you don't have any of this files already first!, if so remove them


```
mkdir -p ~/Documents/GitHub
git clone https://github.com/SteavenGamerYT/dot-files ~/Documents/GitHub/dot-files
sudo apt install starship zsh zsh-syntax-highlighting autojump zsh-autosuggestions neofetch xclip lolcat
mkdir ~/.zsh
mkdir ~/.zsh/plugins/
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/plugins/powerlevel10k
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh/plugins/zsh-autocomplete
chsh -s $(which zsh)
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
rm -rf ~/.config/brave-flags.conf
rm -rf ~/.ssh/config
rm -rf ~/.config/fish
rm -rf ~/.config/dunst
rm -rf ~/.config/swaylock
rm -rf ~/.config/rofi
mkdir ~/.ssh
mkdir ~/.config
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
ln -s ~/Documents/GitHub/dot-files/.config/brave-flags.conf ~/.config/brave-flags.conf
ln -s ~/Documents/GitHub/dot-files/.ssh/config ~/.ssh/config
ln -s ~/Documents/GitHub/dot-files/.config/fish ~/.config/fish
ln -s ~/Documents/GitHub/dot-files/.config/dunst ~/.config/dunst
ln -s ~/Documents/GitHub/dot-files/.config/swaylock ~/.config/swaylock
ln -s ~/Documents/GitHub/dot-files/.config/rofi ~/.config/rofi
```


***99% OF LINUX DISTROS DONT HAVE Starsship INSALL IT USING THIS***


`curl -sS https://starship.rs/install.sh | sh`
