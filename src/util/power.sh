#!/bin/bash

# OPTIONS:
# dark	dark theme
# tp	transparent

dark=0
tp=0

if [[ "$1" == "dark" ]]
then
	dark=1
elif [[ "$1" == "tp" ]]
then
	tp=1
fi

if [[ "$2" == "dark" ]]
then
	dark=1
elif [[ "$2" == "tp" ]]
then
	tp=1
fi


latest_pid=`pgrep -n polybar`
pid_info=`cat /proc/${latest_pid}/cmdline | tr -d '\0'`
if [[ $pid_info =~ "polybar/material-square-polybar-xfce/src/themes/" ]]
then
	if [[ $pid_info =~ ".confpower" ]]
	then
		running=1
	else
		running=0
	fi
else
	running=0
fi

if [[ $running == 0 ]]
then
	if [[ $dark == 0 ]]
	then
		if [[ $tp == 0 ]]
		then
			polybar -c ~/.config/polybar/material-square-polybar-xfce/src/themes/light.d/config.conf power
		else
			polybar -c ~/.config/polybar/material-square-polybar-xfce/src/themes/light-tp.d/config.conf power
		fi
	else
		if [[ $tp == 0 ]]
		then
			polybar -c ~/.config/polybar/material-square-polybar-xfce/src/themes/dark.d/config.conf power
		else
			polybar -c ~/.config/polybar/material-square-polybar-xfce/src/themes/dark-tp.d/config.conf power
		fi
	fi
fi

exit 0
