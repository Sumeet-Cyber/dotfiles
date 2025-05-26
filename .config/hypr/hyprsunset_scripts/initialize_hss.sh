# This script initializes hyprsunset. It has to be run when the time is between 6pm to morning 7 am or else when the user clicks the waybar module.

echo "on" > ~/.config/hypr/hyprsunset_scripts/hyprssCurState

hyprsunset --temperature 4500
