# Function to source a plugin with error handling
source_plugin() {
    if [[ -r "$1" ]]; then
        source "$1"
    else
        echo "Can't find the necessary script: $1"
    fi
}

# Sourcing plugins
source_plugin ~/.zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source_plugin ~/.steavengameryt

# Starship prompt configuration based on Linux distribution
if [ -e /etc/os-release ]; then
    linux_distro=$(awk -F= '/^ID=/{gsub(/"/, "", $2); print tolower($2)}' /etc/os-release)
else
    # fallback to your previous method if /etc/os-release is not available
    linux_distro=$(lsb_release -si | tr '[:upper:]' '[:lower:]')
fi

case $linux_distro in
  arch)
    export STARSHIP_CONFIG=~/.config/starship/starship-arch.toml
    ;;
  fedora)
    export STARSHIP_CONFIG=~/.config/starship/starship-fedora.toml
    ;;
  debian)
    export STARSHIP_CONFIG=~/.config/starship/starship-debian.toml
    ;;
  ubuntu)
    export STARSHIP_CONFIG=~/.config/starship/starship-ubuntu.toml
    ;;
  opensuse-tumbleweed)
    export STARSHIP_CONFIG=~/.config/starship/starship-opensuse.toml
    ;;
  *)
    export STARSHIP_CONFIG=~/.config/starship/starship.toml
    ;;
esac

# Check if Starship configuration is readable before initializing
if ! [[ -r "$STARSHIP_CONFIG" ]]; then
    echo "Error: The configuration file $STARSHIP_CONFIG is not readable!"
fi
eval "$(starship init zsh)"


# Autojump setup with error handling
if [ -f "/usr/share/autojump/autojump.sh" ]; then
    . /usr/share/autojump/autojump.sh
elif [ -f "/usr/share/autojump/autojump.bash" ]; then
    . /usr/share/autojump/autojump.bash
else
    echo "Can't find the autojump script."
fi

# History configuration
HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=10000
setopt sharehistory
setopt extendedhistory

# Unset nomatch option
unsetopt nomatch

# Cleanup of home dicrictory
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"