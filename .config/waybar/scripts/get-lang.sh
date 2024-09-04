hyprctl devices -j |
  jq -r '.keyboards[] | .active_keymap' |
  sed -n '6p' |
  cut -c1-2 |
  tr 'A-Z' 'a-z'

