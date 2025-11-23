#!/bin/bash

OPTIONS="lock\nsuspned\nreboot\npoweroff\ncancel"

CHOICE=$(echo -e "$OPTIONS" | wofi --dmenu -i -p "Power Menu")

case "$CHOICE" in
	lock)
		hyprlock
		;;
	suspned)
		bind = $mainMod, A, exec, dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.Suspend" boolean:true
		;;
	reboot)
		bind = $mainMod, R, exec, dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.Reboot" boolean:true
		;;
	poweroff)
		bind = $mainMod, P, exec, dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.PowerOff" boolean:true
		;;
	cancel)
		echo "cancelled"
		;;
	*)
		# nothing
		;;
esac
