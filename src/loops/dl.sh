#!/usr/bin/env bash
# This script repeats a character for a specified number of times.
if [[ ! $1 ]]; then
    echo "enter the number of characters"
    exit 1
fi

# Checking if the first argument is a number.
if [[ $1 =~ ^[0-9]+$ ]] ; then
	length="${1}"
else
    echo "argument must be a number"
    exit 1
fi

# Use '=' as the default character.
char="="
if [[ $2 ]]; then
    char="${2}"
fi

line=
# For loop. Same as C.
for (( i=0; i<length; ++i)) ; do
	# Append the previous value of 'line' with another character.
	line="${line}${char}"
done

printf "%s\n" "$line"
exit 0