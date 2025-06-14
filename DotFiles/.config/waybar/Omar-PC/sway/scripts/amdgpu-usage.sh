#!/usr/bin/env bash

# Function to detect AMD GPU
detect_amd_gpu() {
    for drm_path in /sys/class/drm/*; do
        if [[ -f "$drm_path/device/uevent" ]] && grep -q "DRIVER=amdgpu" "$drm_path/device/uevent"; then
            echo "$drm_path"
            return 0
        fi
    done
    return 1
}

# Detect GPU
GPU_PATH=$(detect_amd_gpu)
if [ -z "$GPU_PATH" ]; then
    echo '{"text": "󰍹 ?", "tooltip": "󰍹 No AMD GPU found"}'
    exit 0
fi

# GPU usage
GPU_BUSY_FILE="$GPU_PATH/device/gpu_busy_percent"
[ ! -f "$GPU_BUSY_FILE" ] && echo '{"text": "󰍹 ?", "tooltip": "󰍹 gpu_busy_percent missing"}' && exit 0
gpu_usage=$(< "$GPU_BUSY_FILE")

# Parse sensors section for AMDGPU
gpu_section=$(sensors | awk '/^amdgpu/,/^$/')

# Extract data
gpu_edge=$(awk '/edge:/ {gsub(/\+|°C/, "", $2); print $2}' <<< "$gpu_section")
gpu_junction=$(awk '/junction:/ {gsub(/\+|°C/, "", $2); print $2}' <<< "$gpu_section")
gpu_mem=$(awk '/mem:/ {gsub(/\+|°C/, "", $2); print $2}' <<< "$gpu_section")
gpu_power=$(awk '/PPT:/ {print $2 " " $3}' <<< "$gpu_section")
gpu_fan=$(awk '/fan1:/ {print int($2) " " $3}' <<< "$gpu_section")

# Fallbacks
gpu_edge=${gpu_edge:-"?"}
gpu_junction=${gpu_junction:-"?"}
gpu_mem=${gpu_mem:-"?"}
gpu_power=${gpu_power:-"?"}
gpu_fan=${gpu_fan:-"N/A"}

# Tooltip with icons:
# 󰔐 temp • 󰍶 mem • 󰚥 power • 󰈐 fan
tooltip=$(printf "󰔐 Edge: %s°C\n󰔐 Junction: %s°C\n󰍶 VRAM: %s°C\n󰚥 Power: %s\n󰈐 Fan: %s" \
  "$gpu_edge" "$gpu_junction" "$gpu_mem" "$gpu_power" "$gpu_fan" | jq -Rs .)

# Final output
echo "{\"text\": \"󰍹 ${gpu_usage}%\", \"tooltip\": ${tooltip}}"
