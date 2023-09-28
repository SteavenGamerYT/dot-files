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

eval "$(starship init bash)"