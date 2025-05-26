# This program terminates any currently running hyprsunset service/program.
# It does so by using pkill and completely iterrupting the running programe.

pkill hyprsunset

echo "off" > ~/.config/hypr/hyprsunset_scripts/hyprssCurState
