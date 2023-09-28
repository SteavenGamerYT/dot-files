skip_global_compinit=1
### PATH
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Applications" ] ;
  then PATH="$HOME/Applications:$PATH"
fi

if [ -d "/var/lib/flatpak/exports/bin/" ] ;
  then PATH="/var/lib/flatpak/exports/bin/:$PATH"
fi

if [ -d "$HOME/.spicetify" ] ;
  then PATH="$HOME/.spicetify:$PATH"
fi

if [ -d "/home/linuxbrew/.linuxbrew/bin" ] ;
  then PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
  
# Run Firefox in wayland Native, IF wayland is Detected.
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi