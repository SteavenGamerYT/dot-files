	# sourcing my plugins
if [[ -r ~/.bash-default ]]; then
  source ~/.bash-default
else
	echo "can't found the bash-default script"
fi
#Autojump

if [ -f "/usr/share/autojump/autojump.sh" ]; then
	. /usr/share/autojump/autojump.sh
elif [ -f "/usr/share/autojump/autojump.bash" ]; then
	. /usr/share/autojump/autojump.bash
else
	echo "can't found the autojump script"
fi

if [[ -r ~/.steavengameryt ]]; then
  source ~/.steavengameryt
else
	echo "can't found the steavengameryt script"
fi

# history
HISTFILE=~/.bash-history
HISTSIZE=SAVEHIST=10000

if [[ $(cat /etc/*-release) == *"arch"* ]]; then
    export STARSHIP_CONFIG=~/.config/starship.toml
elif [[ $(cat /etc/*-release) == *"fedora"* ]]; then
    export STARSHIP_CONFIG=~/.config/starship-fedora.toml
fi
eval "$(starship init bash)"
