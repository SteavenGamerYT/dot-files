#!/bin/bash

# List of .desktop files to modify
FILES=(
  "rpcs3.desktop"
  "ryujinx.desktop"
  "duckstation.desktop"
  "info.cemu.Cemu.desktop"
  "pcsx2.desktop"
  "dolphin-emu.desktop"
)

# Directory containing the copied .desktop files
DESKTOP_DIR="$HOME/.local/share/applications"

# Iterate over each file in the list
for file in "${FILES[@]}"; do
  desktop_file="$DESKTOP_DIR/$file"
  
  # Check if the file exists
  if [ ! -f "$desktop_file" ]; then
    echo "File $desktop_file does not exist, skipping..."
    continue
  fi

  # Extract the current Exec line
  current_exec=$(grep '^Exec=' "$desktop_file" | sed 's|^Exec=||')

  # Skip files where the Exec line could not be found
  if [ -z "$current_exec" ]; then
    echo "No Exec line found in $desktop_file, skipping..."
    continue
  fi

  # Create the new Exec line
  new_exec="Exec=bash -c 'killpicom game-run $current_exec'"

  # Replace the old Exec line with the new one
  sed -i "s|^Exec=.*|$new_exec|" "$desktop_file"
  
  echo "Updated Exec line in $desktop_file"
done
