# sourcing my plugins
if [[ -r ~/.bash-default ]]; then
  source ~/.bash-default
else
	echo "can't found the bash-default script"
fi

if [[ -r ~/.steavengameryt ]]; then
  source ~/.steavengameryt
else
	echo "can't found the steavengameryt script"
fi
export PATH=$PATH:~/.spicetify
eval "$(starship init bash)"

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

IDK WHAT TO DO
source ~/.bash-default
source ~/.steavengameryt
