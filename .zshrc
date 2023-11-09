# sourcing my plugins
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ -r ~/.zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh ]]; then
  source ~/.zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
else
	echo "can't found the zsh-autocomplete script"
fi

#if [[ -r ~/.zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme ]]; then
#  source ~/.zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
#else
#	echo "can't found the powerlevel10k script"
#fi
if [[ -r ~/.steavengameryt ]]; then
  source ~/.steavengameryt
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
eval "$(starship init zsh)"
unsetopt nomatch