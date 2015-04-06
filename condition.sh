#!/bin/bash

echo -e "<< login >>"
read -p 'pseudo:' -n 25 pseudo		# don't autorise more than 25 characters inputs
read -p '  pass:' -n 25 -s pass

pseudotemp=`grep -w $pseudo ~/shell/list | cut -d\  -f 1`	# print the line containing the pseudo (if existant) and cut after the space character
  passtemp=`grep -w $pseudo ~/shell/list | cut -d\  -f 2`	# print the line containing the pseudo (if existant) and cut before the space character

if [[ "$pseudo" = $pseudotemp ]] && [[ "$pass" = $passtemp ]]
then
	clear
	echo -e "> access granted."
else
	clear
	echo -e "> access denied."
fi
# a condition always begins with if and ends with fi
