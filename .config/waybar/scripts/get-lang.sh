swaymsg -t get_inputs | jq -r '.[] | select(.type == "keyboard") | .xkb_active_layout_name' | \
awk '{print tolower($0)}' | \
grep -oE '[a-z]{2,}' | \
sort | uniq | head -n 1 | \
awk '
    BEGIN {
        # Define the mapping
        map["english"] = "us";
        map["arabic"] = "eg";
        # Add more mappings as needed
    }
    {
        # Convert the input to lowercase
        lang = tolower($0);
        # Output the mapped short code or the original value if not mapped
        if (lang in map) {
            print map[lang];
        } else {
            print lang;
        }
    }
'
