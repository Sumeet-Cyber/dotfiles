#!/bin/bash

original=$(cat ~/.config/hypr/brightness_scripts/original_level)
brightnessctl -s set $original
