#!/bin/bash

latest_pid=`pgrep -n polybar`
pid_info=`cat /proc/${latest_pid}/cmdline | tr -d '\0'`

if [[ $pid_info =~ "polybar/material-square-polybar-xfce/src/themes" ]]
then
	if [[ $pid_info =~ ".confpower" ]]
	then
		kill -9 $(pgrep -n polybar)
	fi
fi

exit 0
