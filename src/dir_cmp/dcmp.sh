#!/usr/bin/env bash
# This script takes paths to two directories as arguments and compares the number of files in each.

# Special variables - $# and $?
# $# gives the number of arguments for the script.
# $? gives the return code for the previous command that was executed.
# Don't use < > = for comparing numbers. Use them for lexicographic comparison of strings.
# For comparing numbers, use options -ne -eq -gt -lt
if [[ $# -ne 2 ]]; then
    echo "need exactly two arguments"
    echo "$# were given"
    exit 1
fi

# Check if the arguments are directories.
if [[ ! -d $1 ]]; then
    echo "$1 is not a directory"
    exit 1
fi
if [[ ! -d $2 ]]; then
    echo "$2 is not a directory"
    exit 1
fi

# Counting the number of files in each directory.
count1=$(ls -al "$1" | wc -l)
count2=$(ls -al "$2" | wc -l)

if [[ ${count1} -gt ${count2} ]]; then
    echo "$1 has more files - ${count1}"
elif [[ ${count2} -gt ${count1} ]]; then
	echo "$2 has more files - ${count2}"
else
	echo "$1 and $2 have equal number of files"
fi

exit 0