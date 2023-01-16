# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh




# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

### PATH
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Applications" ] ;
  then PATH="$HOME/Applications:$PATH"
fi

if [ -d "/var/lib/flatpak/exports/bin/" ] ;
  then PATH="/var/lib/flatpak/exports/bin/:$PATH"
fi

if [ -d "$HOME/.spicetify" ] ;
  then PATH="$HOME/.spicetify:$PATH"
fi

# Sounds
alias laptop-speekers="pactl set-default-sink alsa_output.pci-0000_00_1b.0.analog-stereo"
alias usb-headphones="pactl set-default-sink alsa_output.usb-C-Media_Electronics_Inc._USB_Audio_Device-00.iec958-stereo"

# History
alias h='history'
alias hs='history | grep'
alias hsi='history | grep -i'

#CopyDIR 
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias copydir='pwd | tr -d "\r\n" | pbcopy'

#speedtest fix
alias speedtest='speedtest --secure'

#samba connect
alias smb-connect='nemo smb://192.168.0.109/omar-share'

# ls -all = ll
alias ll='ls -all --color=auto'

# Alias's to modified commands
alias cp='cp -i'
alias mv='mv -i'
alias rm='trash -v'
alias mkdir='mkdir -p'
alias ps='ps auxf'
alias ping='ping -c 10'
alias less='less -R'
alias cls='clear'
alias apt-get='sudo apt-get'
alias multitail='multitail --no-repeat -c'
alias freshclam='sudo freshclam'
alias vi='nvim'
alias svi='sudo vi'
alias vis='nvim "+set si"'
# Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'
if [ -f "/usr/share/autojump/autojump.sh" ]; then
	. /usr/share/autojump/autojump.sh
elif [ -f "/usr/share/autojump/autojump.bash" ]; then
	. /usr/share/autojump/autojump.bash
else
	echo "can't found the autojump script"
fi

alias mount-hdd='sudo lowntfs-3g -o uid=1000,gid=1000,rw,user,exec,umask=000 /dev/sda1 /media/externlhdd'