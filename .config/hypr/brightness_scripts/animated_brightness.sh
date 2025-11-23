#!/bin/bash

step_count=350
step_duration=0.02
current_brightness=$(brightnessctl get)

echo "$current_brightness" > ~/.config/hypr/brightness_scripts/original_level

if [ $current_brightness -ge 1000 ];
then
	limit=1500
else
	limit=100
fi

while [ $(brightnessctl get) -gt $limit ];
do
	brightnessctl -s set $step_count-
	sleep $step_duration
done
