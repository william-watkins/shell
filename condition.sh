#!/bin/bash

read -p 'pass:' -s pass
if [ $pass = "test" ]
then
	echo "< access granted >"
elif [ $pass != "test" ]		# in this simple case, else can simply be used (elif sf: else if)
then
	echo "< access denied >"
fi
# a condition always begins with if and ends with fi
