#!/bin/bash

tableur=('value0' 'value1' 'value2')	# the way we initialize a tableur of multiple variables
tableur[5]='value5' 					# initialize or change a specified case of the tableur
echo ${tableur[1]}						# display a variable of the tableur
echo ${tableur[*]}						# display all variables of the tableur
