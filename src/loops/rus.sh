#!/usr/bin/env bash
# This script demonstrates the use of the read command and loops.

# Use -n option to not print a newline.
echo -n "are you sure(Y/N)? "

# Declaring a variable for while-loop.
answered=
while [[ ! ${answered} ]]; do
	# Using -r option will treat the user's input as raw input.
	# Using -n option with <num> argument will only wait till <num> characters are entered.
	# Using -s option will suppress the user's input. So, whatever the user types won't be displayed.
    read -r -n 1 -s answer
    if [[ ${answer} = [Yy] ]]; then
        answered="yes"
    elif [[ ${answer} = [Nn] ]]; then
    	answered="no"
    fi
done

printf "\n%s\n" ${answered}