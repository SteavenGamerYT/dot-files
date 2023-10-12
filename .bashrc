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
    export STARSHIP_CONFIG=~/.config/starship/starship-arch.toml
elif [[ $(cat /etc/*-release) == *"fedora"* ]]; then
    export STARSHIP_CONFIG=~/.config/starship/starship-fedora.toml
elif [[ $(cat /etc/*-release) == *"debian"* ]]; then
    export STARSHIP_CONFIG=~/.config/starship/starship-debian.toml
elif [[ $(cat /etc/*-release) == *"ubuntu"* ]]; then
    export STARSHIP_CONFIG=~/.config/starship/starship-ubuntu.toml
else
    export STARSHIP_CONFIG=~/.config/starship/starship.toml
fi

if [[ ! -f $STARSHIP_CONFIG ]]; then
    echo "Error: The configuration file $STARSHIP_CONFIG is missing!"
fi
eval "$(starship init bash)"