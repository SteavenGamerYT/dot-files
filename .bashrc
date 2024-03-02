# Sourcing custom settings
if [[ -r ~/.bash-default ]]; then
  source ~/.bash-default
else
  echo "Error: Can't find the bash-default script"
fi

# Autojump setup
if [ -f "/usr/share/autojump/autojump.sh" ]; then
  . /usr/share/autojump/autojump.sh
elif [ -f "/usr/share/autojump/autojump.bash" ]; then
  . /usr/share/autojump/autojump.bash
else
  echo "Error: Can't find the autojump script"
fi

# Sourcing additional custom settings
if [[ -r ~/.steavengameryt ]]; then
  source ~/.steavengameryt
else
  echo "Error: Can't find the steavengameryt script"
fi

# History settings
HISTFILE=~/.bash-history
HISTSIZE=SAVEHIST=10000

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

eval "$(starship init bash)"
#eval "$(atuin init bash)"
