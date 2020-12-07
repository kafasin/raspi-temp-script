#!/bin/bash

printf "%-25s%5s\n" "TIMESTAMP" "TEMP(C)"
printf "%10s\n" "--------------------------------"

while true
do
	temp=$(vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*')
	timestamp=$(date +"%F %T")
	printf "%-25s%5s\n" "$timestamp" "$temp"
	sleep 1
done
