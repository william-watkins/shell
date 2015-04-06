#!/bin/bash

read -p 'pass:' -s pass
if [ $pass = "test" ]
then
	echo "< access granted >"
else
	echo "< access denied >"
fi
# a condition always begins with if and ends with fi
