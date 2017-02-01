#!/usr/bin/env bash
# This script demonstrates the usages of the printf command.
printf "hello there\n"

# printf is called on every argument here.
printf "p%st\n" a e i o u

# String formatting.
printf "|%20s |%20s |%20s |\n" $(ls $HOME)

# Storing the output of printf in a variable.
printf -v output "greetings $USER\n"

echo ${output}