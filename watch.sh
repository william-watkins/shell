#!/bin/bash

i=0							# declaration of the variable i
read -p 'sec: ' -n 5 sec	# waiting from input from user
let "sec -= 1"				# decrementation of variable sec
clear						# clear screen

while [ $i -le $sec ];		# while loop logic
do							# do replace the '{' in C
	date					# display the date
	sleep 1					# sleep for 1 sec
	let "i += 1"			# increment i of 1
done						# done replace the '}' in C
