
if [[ -r "/home/omarhanykasban/.bash-default" ]]; then
  source "/home/omarhanykasban/.bash-default"
else
	echo "can't found the bash-default script"
fi

if [[ -r "/home/omarhanykasban/.steavengameryt" ]]; then
  source "/home/omarhanykasban/.steavengameryt"
else
	echo "can't found the steavengameryt script"
fi
export PATH=$PATH:/home/omarhanykasban/.spicetify
eval "$(starship init bash)"

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion
