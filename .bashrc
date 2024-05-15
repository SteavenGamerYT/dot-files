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

# Autojump setup with improved error handling
autojump_setup() {
  # Define possible locations of the autojump script
  local autojump_paths=("/usr/share/autojump/autojump.sh" "/usr/share/autojump/autojump.bash")
  local script_found=false

  # Iterate through the possible paths
  for path in "${autojump_paths[@]}"; do
    # Check if the script exists at the current path
    if [[ -f "$path" ]]; then
      # Source the script and mark it as found
      . "$path"
      script_found=true
      break
    fi
  done

  # If the script wasn't found, output an error message
  if ! $script_found; then
    echo "Error: Can't find the autojump script"
  fi
}

# Initialize the autojump feature
autojump_setup

# History settings
HISTFILE=~/.bash-history  # Set the file where history is stored
HISTSIZE=10000            # Set the number of commands to remember in the history
SAVEHIST=10000            # Set the number of commands to save in the history file

# Starship prompt configuration based on Linux distribution
determine_linux_distro() {
  # Check if the OS release file exists
  if [ -e /etc/os-release ]; then
    # Extract the distribution ID from the OS release file
    awk -F= '/^ID=/{gsub(/"/, "", $2); print tolower($2)}' /etc/os-release
  else
    # Use lsb_release as a fallback to determine the distribution
    lsb_release -si | tr '[:upper:]' '[:lower:]'
  fi
}

# Determine the Linux distribution
linux_distro=$(determine_linux_distro)

# Define configurations for Starship prompt based on the distribution
declare -A starship_configs=(
  [arch]="~/.config/starship/starship-arch.toml"
  [fedora]="~/.config/starship/starship-fedora.toml"
  [debian]="~/.config/starship/starship-debian.toml"
  [ubuntu]="~/.config/starship/starship-ubuntu.toml"
  [opensuse-tumbleweed]="~/.config/starship/starship-opensuse.toml"
  [default]="~/.config/starship/starship.toml"
)

# Set the Starship configuration file based on the detected distribution
STARSHIP_CONFIG="${starship_configs[$linux_distro]:-${starship_configs[default]}}"

# Expand the path to the Starship configuration file to handle tilde expansion
STARSHIP_CONFIG=$(eval echo $STARSHIP_CONFIG)

# Check if the Starship configuration file is readable before initializing
if [[ -r "$STARSHIP_CONFIG" ]]; then
  # Initialize Starship prompt
  eval "$(starship init bash)"
else
  # Output an error message if the configuration file is not readable
  echo "Error: Unable to read the configuration file $STARSHIP_CONFIG!"
fi

# Additional utilities initialization
eval "$(zoxide init bash)"  # Initialize zoxide for smarter directory navigation
colorscript -r  # Run a random color script for terminal aesthetics

if [ "$TERM" = "xterm-kitty" ]; then
  fastfetch
fi

if [ "$TERM" = "xterm-256color" ]; then
  neofetch-image
fi