#!/bin/bash

while true
do
	curr_bat_cap=`cat /sys/class/power_supply/BAT0/capacity`
	status=`cat /sys/class/power_supply/BAT0/status`

	# sometimes the battery may go over 100%, in this case, set it to 100% anyway
	if [ $curr_bat_cap -gt 100 ]
	then
		curr_bat_cap=100
	fi
	
	if [ $curr_bat_cap -ge 80 ]
	then
		colour='#00ff00'	
	elif [ $curr_bat_cap -ge 60 ]
	then
		colour='#bbff00'
	elif [ $curr_bat_cap -ge 40 ]
	then
		colour='#ffd900'
	elif [ $curr_bat_cap -ge 20 ]
	then
		colour='#ff6600'
	else
		colour='#ff0000'
	fi

	if [ $status != 'Discharging' ]
	then
		echo "%{F$colour}%{F-} $curr_bat_cap%"
	else
		echo "%{F$colour}%{F-} $curr_bat_cap%"
	fi

	sleep 1 &
	wait
done
