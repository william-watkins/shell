#!/bin/bash

red='\e[0;35m'
blue='\e[0;34m'
green='\e[0;32m'
yellow='\e[0;31m'
neutral='\e[0;m'

clear
echo -e "< login >${blue}"

if [[ $1 == '-l' ]]
then
	shift
	pseudo=$1			# take the parameter right after the -p launch option
else
	read -p 'pseudo:' -n 25 pseudo		# don't autorise more than 25 characters inputs
fi

read -p '  pass:' -n 25 -s pass
time=`date | cut -d , -f 2 | cut -d\  -f 2`
date=`date | cut -d , -f 1`

pseudotemp=`grep -w $pseudo ~/shell/list | cut -d\  -f 1`	# print the line containing the pseudo (if existant) and cut after the space character
  passtemp=`grep -w $pseudo ~/shell/list | cut -d\  -f 2`	# print the line containing the pseudo (if existant) and cut before the space character

if [[ "$pseudo" = $pseudotemp ]] && [[ "$pass" = $passtemp ]]
then
	echo -e "${green}\n> access granted.${neutral}"
	echo -e "${yellow}> connected: $USER@$DESKTOP_SESSION at $time, $date${neutral}"
else
	echo -e "${red}\n> access denied.${neutral}"
fi
# a condition always begins with if and ends with fi

# script call options : -l [pseudo] complete the input line of the pseudo without asking
#					  :
