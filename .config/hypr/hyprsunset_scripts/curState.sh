# This script returns the current state of the hyprsunset programe.

cur_state=$(cat ~/.config/hypr/hyprsunset_scripts/hyprssCurState)

if [ "$cur_state" = "off" ]; then
	echo "☼"
else
	echo "☽"
fi
