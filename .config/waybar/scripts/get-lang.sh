swaymsg -t get_inputs | jq -r '.[] | select(.type == "keyboard") | .xkb_active_layout_name' | \
awk '{print tolower($0)}' | \
grep -oE '[a-z]{2,}' | \
sort | uniq | head -n 1 | \
awk '{print toupper(substr($0,1,1)) tolower(substr($0,2))}'

