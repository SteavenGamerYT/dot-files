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
stv-install() {
  if [[ $1 == "-v" ]]; then
    x=$@
    if [[ $2 == "arch" ]]; then
        x=${x/-v arch/}
        sudo pacman $x
    elif [[ $2 == "ubuntu" ]]; then
        x=${x/-v ubuntu/}
        distrobox-enter -H ubuntu -- sudo apt $x
    elif [[ $2 == "fedora" ]]; then
        x=${x/-v fedora/}
        distrobox-enter -H fedora -- sudo dnf $x
    else
        echo "Command Not Found"
    fi
  fi
}
stv() {
  if [[ $1 == "-v" ]]; then
    x=$@
    if [[ $2 == "arch" ]]; then
        x=${x/-v arch/}
         $x
    elif [[ $2 == "ubuntu" ]]; then
        x=${x/-v ubuntu/}
        distrobox-enter -H ubuntu -- $x
    elif [[ $2 == "fedora" ]]; then
        x=${x/-v fedora/}
        distrobox-enter -H fedora -- $x
    else
        echo "Command Not Found"
    fi
  fi
  }
colorscript -r
