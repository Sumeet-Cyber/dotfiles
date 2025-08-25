#!/bin/bash

function crun() {
	filename=$1
	filenameWithOutExt="${filename%.*}"
	extension=${filename##*.}
	if [ "$extension" = "cpp" ]; then
		g++ "$filename" -o "$filenameWithOutExt"
	elif [ "$extension" = "c" ]; then
		gcc "$filename" -o "$filenameWithOutExt"
	else
		echo "this file has neither 'c' nor 'cpp' extension! So USE DIFFERENT TOOL."
		return
		fi
		./"$filenameWithOutExt"
}

function setwall() {
	# First I will check if the use has provided the file or not.
	if [ -z "$1" ]; then
		echo "Error: Please provide a file to move."
		echo "Correct way -> setwall <wallpaper_image_file>"
		exit 1
	fi

	wallpaper=$1
	# Next let's check if the file really exists or not.
	if [ ! -f "$wallpaper" ]; then
		echo "The passed file does not exist!"
		exit 1
	fi

	# Now if all is right then do these things:
	new_wallpaper_ext=${wallpaper##*.}
	wallpaper_dir="/home/sumeetj/Pictures/wallpapers/current_wallpaper"
	echo "Clearing last used wallpaper...."
	rm -r "$wallpaper_dir"/*
	echo "Moving new wallpaper to the directory...."
	cp "$wallpaper" "$wallpaper_dir"/wallpaper."$new_wallpaper_ext"
	echo "Applying new wallpaper settings...."
	swww img "$wallpaper" --transition-type wave --transition-angle 315 --transition-fps 60 --transition-duration 2
	wal -i "$wallpaper"
	echo "now restarting the waybar...."
	pkill waybar && waybar &
	echo "Process completed successfully."
}
