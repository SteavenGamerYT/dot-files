#!/bin/bash

# Array of mount points to monitor
mount_points=(
    "/mnt/hdd"
    "/mnt/hdd2"
    "/home"
    "/"
)

# Initialize total storage variable
total_storage_gb=0

# Loop through each mount point
for mount_point in "${mount_points[@]}"; do
    # Check if mount point exists
    if [ ! -e "$mount_point" ]; then
        continue
    fi
    
    # Get disk usage in GB for the current mount point
    usage_gb=$(df -BG "$mount_point" 2>/dev/null | awk 'NR==2 {print $4}' | sed 's/G//')
    
    # Check if usage_gb is a number
    if [[ ! "$usage_gb" =~ ^[0-9]+$ ]]; then
        continue
    fi
    
    # Add usage to total storage
    total_storage_gb=$((total_storage_gb + usage_gb))
done

# Print total storage left
echo "$total_storage_gb GB"
