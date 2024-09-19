# Resize mode
resize_mode() {
    bspc node -z $1 $2 10 10
}

# Resize Mode Keybindings
j : resize_mode shrink width
k : resize_mode grow height
l : resize_mode shrink height
semicolon : resize_mode grow width
Left : resize_mode shrink width
Down : resize_mode grow height
Up : resize_mode shrink height
Right : resize_mode grow width
Return : bspc node -m default
Escape : bspc node -m default

# Focus and Move Focus
$mod+semicolon : bspc node -f right
$mod+Left : bspc node -f left
$mod+Down : bspc node -f down
$mod+Up : bspc node -f up
$mod+Right : bspc node -f right
$mod+Shift+j : bspc node -m left
$mod+Shift+k : bspc node -m down
$mod+Shift+l : bspc node -m up
$mod+Shift+semicolon : bspc node -m right
$mod+Shift+Left : bspc node -m left
$mod+Shift+Down : bspc node -m down
$mod+Shift+Up : bspc node -m up
$mod+Shift+Right : bspc node -m right

# Window Management
$mod+h : bspc split horizontal
$mod+v : bspc split vertical
$mod+f : bspc node -t fullscreen
$mod+s : bspc node -p stack
$mod+w : bspc node -p tabbed
$mod+e : bspc node -p toggle split
$mod+space : bspc node -t floating
$mod+Shift+z : bspc node -m toggle
$mod+a : bspc node -m parent

# Workspace Management
set -g ws1 "1"
set -g ws2 "2"
set -g ws3 "3"
set -g ws4 "4"
set -g ws5 "5"
set -g ws6 "6"
set -g ws7 "7"
set -g ws8 "8"
set -g ws9 "9"
set -g ws10 "10"

$mod+1 : bspc desktop -f $ws1
$mod+2 : bspc desktop -f $ws2
$mod+3 : bspc desktop -f $ws3
$mod+4 : bspc desktop -f $ws4
$mod+5 : bspc desktop -f $ws5
$mod+6 : bspc desktop -f $ws6
$mod+7 : bspc desktop -f $ws7
$mod+8 : bspc desktop -f $ws8
$mod+9 : bspc desktop -f $ws9
$mod+0 : bspc desktop -f $ws10

$mod+Shift+1 : bspc node -d $ws1
$mod+Shift+2 : bspc node -d $ws2
$mod+Shift+3 : bspc node -d $ws3
$mod+Shift+4 : bspc node -d $ws4
$mod+Shift+5 : bspc node -d $ws5
$mod+Shift+6 : bspc node -d $ws6
$mod+Shift+7 : bspc node -d $ws7
$mod+Shift+8 : bspc node -d $ws8
$mod+Shift+9 : bspc node -d $ws9
$mod+Shift+0 : bspc node -d $ws10

# Audio and Brightness Controls
XF86AudioRaiseVolume : ~/.config/i3/scripts/volume --inc 
XF86AudioLowerVolume : ~/.config/i3/scripts/volume --dec 
XF86AudioMute : ~/.config/i3/scripts/volume --toggle
XF86AudioMicMute : ~/.config/i3/scripts/volume --toggle-mic 
XF86AudioPlay : playerctl play-pause
XF86AudioPause : playerctl play-pause
XF86AudioNext : playerctl next
XF86AudioPrev : playerctl previous
XF86MonBrightnessUp : brightnessctl set +5%
XF86MonBrightnessDown : brightnessctl set 5%-

# Keybindings
$mod+l : betterlockscreen -l
$mod+Return : kitty
$mod+x : kitty
$mod+b : firefox --profile /home/omarhanykasban/.mozilla/firefox/29dx8ujh.default-release
$mod+z : nemo
$mod+/ : looking-glass-client
$mod+Shift+q : kill
$mod+d : ~/.config/rofi/launcher/launcher.sh
$mod+Shift+c : bspc wm -r
$mod+Shift+r : bspc wm -r

# Screenshots
Print : scrot "$HOME/Pictures/Screenshots/%Y-%m-%d_%H-%M-%S.png" -M 0 -e 'xclip -selection clipboard -target image/png -i $f' && notify-send "Screenshot taken"
$mod+Shift+s : flameshot gui -p ~/Pictures/Screenshots -c
