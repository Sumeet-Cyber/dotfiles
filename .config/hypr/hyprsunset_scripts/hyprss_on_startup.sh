# This script will be executed once during startup, it will check time and accordingly decide if the initialization script of hyprsunset should be executed or not.

cur_time=$(date +"%H")

if [ "$cur_time" -ge 18 ] || [ "$cur_time" -le 7 ]; then
	~/.config/hypr/hyprsunset_scripts/initialize_hss.sh &
fi
