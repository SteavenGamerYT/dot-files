skip_global_compinit=1
export MOZ_ENABLE_WAYLAND=1
if [[ -r ~/.envs ]]; then
source ~/.envs
else
echo "can't found the envs script"
fi
