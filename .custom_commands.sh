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
	wallpaper=$1
	new_wallpaper_ext=${wallpaper##*.}
	wallpaper_dir="/home/sumeetj/Pictures/wallpapers/current_wallpaper"
	echo "Clearing last used wallpaper...."
	rm -r "$wallpaper_dir"/*
	echo "Moving new wallpaper to the directory...."
	cp "$wallpaper" "$wallpaper_dir"/wallpaper."$new_wallpaper_ext"
	echo "Applying new wallpaper settings...."
	swww img "$wallpaper"
	wal -i "$wallpaper"
	echo "Process completed successfully."
}
