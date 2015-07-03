#!/bin/bash

i=0
read -p 'sec: ' -n 5 sec

while [ $i -le $sec ];
do
	n=0
	clear
	let "n = sec - i"

	if [[ $n > 59 ]]
	then
		let "n /= 60"
		echo "$n min $n sec."
	fi
	

	echo "$n sec."
	sleep 1
	let "i++"
done
