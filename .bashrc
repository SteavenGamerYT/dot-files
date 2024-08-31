# Sourcing custom settings with error handling
source_custom() {
  # Check if the file is readable
  if [[ -r "$1" ]]; then
    # If the file is readable, source it
    source "$1"
  else
    # If the file is not found, output an error message
    echo "Error: Can't find the script $1"
  fi
}

# Source the default bash settings and a custom script
source_custom ~/.bash-default
source_custom ~/.steavengameryt

# History settings
HISTFILE=~/.bash-history  # Set the file where history is stored
HISTSIZE=10000            # Set the number of commands to remember in the history
SAVEHIST=10000            # Set the number of commands to save in the history file


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
if [[ -r "$STARSHIP_CONFIG" ]]; then
    eval "$(starship init bash)"
else
    echo "Error: The configuration file $STARSHIP_CONFIG is not readable!"
fi

# Additional utilities initialization
eval "$(zoxide init bash)"  # Initialize zoxide for smarter directory navigation
colorscript -r  # Run a random color script for terminal aesthetics

case "$TERM" in
  "xterm-kitty")
    /usr/bin/fastfetch --config ~/.config/fastfetch/config-kitty.jsonc
    ;;
  "xterm-256color")
    /usr/bin/fastfetch --config ~/.config/fastfetch/config.jsonc
    ;;
esac

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
#eval "$(atuin init bash)"