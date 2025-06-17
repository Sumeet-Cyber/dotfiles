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
