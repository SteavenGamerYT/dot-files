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
eval "$(starship init bash)"