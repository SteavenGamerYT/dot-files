# dot files
 My Dot FIles


 # Using


 to use them you need this packages installed 


 `sudo apt install zsh zsh-syntax-highlighting autojump zsh-autosuggestions neofetch xclip`


 and powerleveal10k


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


# (Dell G15 5510)


```
ln -s ~/Documents/GitHub/dot-files/Dell-G15-5510/.zshrc ~/.zshrc
ln -s ~/Documents/GitHub/dot-files/Dell-G15-5510/.bashrc ~/.bashrc
ln -s ~/Documents/GitHub/dot-files/Dell-G15-5510/.profile ~/.profile
ln -s ~/Documents/GitHub/dot-files/Dell-G15-5510/.zshenv ~/.zshenv
ln -s ~/Documents/GitHub/dot-files/Dell-G15-5510/.p10k.zsh ~/.p10k.zsh
ln -s ~/Documents/GitHub/dot-files/Dell-G15-5510/.config/i3/config ~/.config/i3/config
ln -s ~/Documents/GitHub/dot-files/Dell-G15-5510/.config/neofetch/config.conf ~/.config/neofetch/config.conf
ln -s ~/Documents/GitHub/dot-files/HP-350-G1/.config/polybar ~/.config/polybar
```


# (HP 350 G1)


```
ln -s ~/Documents/GitHub/dot-files/HP-350-G1/.zshrc ~/.zshrc
ln -s ~/Documents/GitHub/dot-files/HP-350-G1/.bashrc ~/.bashrc
ln -s ~/Documents/GitHub/dot-files/HP-350-G1/.profile ~/.profile
ln -s ~/Documents/GitHub/dot-files/HP-350-G1/.zshenv ~/.zshenv
ln -s ~/Documents/GitHub/dot-files/HP-350-G1/.p10k.zsh ~/.p10k.zsh
ln -s ~/Documents/GitHub/dot-files/HP-350-G1/.config/i3/config ~/.config/i3/config
ln -s ~/Documents/GitHub/dot-files/HP-350-G1/.config/neofetch/config.conf ~/.config/neofetch/config.conf
ln -s ~/Documents/GitHub/dot-files/Dell-G15-5510/.config/polybar/config.ini ~/.config/polybar/config.ini
ln -s ~/Documents/GitHub/dot-files/Dell-G15-5510/.config/polybar/launch.sh ~/.config/polybar/launch.sh
```
