#!/bin/bash

date=`date | cut -d , -f 1`
time=`date | cut -d , -f 2`
echo -e "  by: $USER\n  on: $DESKTOP_SESSION\nfrom: $PWD\ndate: $date\ntime:$time"
# $USER is an environmental variable (see env to list them all)
# cut -d , -f 1 allow me to cut the text after the , present in the string of character of what the command date send off
