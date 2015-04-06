#!/bin/bash

message='bonjour je suis bleu.'
echo 'message:' $message	# works as intended
echo "message: $message"	# same as above as double-quotes don't have the same behavior as single-quotes

directory=`pwd`				# the back quotes are used to store commands to be executed in the variable directory
echo "directory: $directory"

read -p 'name: ' name		# wait for an input from the client wich will be put in the "name" variable, -p option prompt a message on screen
echo "Hello $name"

read -p 'pass(5 max): ' -s -n 5 pass	# -n <nb> set the maximum input size to 5 characters and put this string in "pass"
echo -e "\npassword: $pass"				# the -e argument to echo allows characters such as \n to work
										# -s argument don't show to the console the current input entered
let "a = 5"					# let allow us to manipulate numbers, it's not possible otherwise
let "b = 2" 				# operations: + (plus), - (minus), * (multi), / (div), ** (pow), % (modu)
let "c = a ** b"			# as in C: +=, -=, *=, /=
echo $c						# the bc command allow us to work with decimal numbers
