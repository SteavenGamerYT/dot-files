# DOT Files
My Dot Files


 # Using


 to use them you need this packages installed 


`yay -Syu zsh zsh-syntax-highlighting autojump zsh-autosuggestions neofetch xclip lolcat i3 hyprland-nvidia polkit-gnome ffmpeg rofi-lbonn-wayland-git pavucontrol papirus-icon-theme nwg-look-bin dunst waybar-hyprland wlogout swaylock-effects pamixer noise-suppression-for-voice thunar-archive-plugin kitty swaybg grimblast-git ffmpegthumbnailer tumbler playerctl wl-clipboard wf-recorder viewnior feh betterlockscreen brightnessctl nm-applet lightdm-gtk-greeter lightdm xdg-desktop-portal xdg-desktop-portal-hyprland-git xdg-desktop-portal-kde fwupd fwupd-efi kde-gtk-config plasma-desktop plasma-pa plasma-meta polybar`


 and powerlevel10k


```
touch "~/.cache/zshhistory"
#-- Setup Alias in $HOME/zsh/aliasrc
mkdir ~/.zsh
mkdir ~/.zsh/plugins/
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/plugins/powerlevel10k
echo 'source ~/.zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ~/.zsh/plugins/zsh-autocomplete
echo 'source ~/.zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh' >> ~/.zshrc
echo 'skip_global_compinit=1' >> ~/.zshenv
```


and this fonts


```
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
sudo unzip FiraCode.zip -d "/usr/share/fonts"
sudo unzip Meslo.zip -d "/usr/share/fonts"
sudo fc-cache -vf
```


```
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
```