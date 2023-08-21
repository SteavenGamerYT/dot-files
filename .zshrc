# sourcing my plugins
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ -r "/home/omarhanykasban/.zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh" ]]; then
  source "/home/omarhanykasban/.zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh"
else
	echo "can't found the zsh-autocomplete script"
fi

if [[ -r "/home/omarhanykasban/.zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme" ]]; then
  source "/home/omarhanykasban/.zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme"
else
	echo "can't found the powerlevel10k script"
fi
if [[ -r "/home/omarhanykasban/.steavengameryt" ]]; then
  source "/home/omarhanykasban/.steavengameryt"
else
	echo "can't found the steavengameryt script"
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [ -f "/usr/share/autojump/autojump.sh" ]; then
	. /usr/share/autojump/autojump.sh
elif [ -f "/usr/share/autojump/autojump.bash" ]; then
	. /usr/share/autojump/autojump.bash
else
	echo "can't found the autojump script"
fi

# history
HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=10000
setopt sharehistory
setopt extendedhistory
export PATH=$PATH:~/.spicetify
eval "$(starship init zsh)"