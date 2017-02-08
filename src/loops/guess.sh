#!/usr/bin/env bash
# This is a guessing game.
# The computer generates a random number and the user is supposed to guess that number.
# The computer will provides hints to the user suggesting whether the number that he guessed is higher or lower.

# Generates a random number within 100.
target=$(($RANDOM % 100))

echo "guess a number within 100"

# Declare a variable to store the user's guess
guess=

# Until executes till this boolean is satisfied.
until [[ ${guess} -eq ${target} ]]; do
	read guess
    if [[ ${guess} -gt ${target} ]]; then
        echo "greater"
    elif [[ ${guess} -lt ${target} ]]; then
        echo "lesser"
    fi;
done