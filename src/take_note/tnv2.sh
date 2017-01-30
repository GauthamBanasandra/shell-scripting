#!/usr/bin/env bash
# Store the date.
date=$(date)
filename=note_$1.txt
# Use the "read" command to read from stdin.
# Usage read <stdout>
read -p "Enter note: " note
# Must enclose the $filename in double-quotes. Otherwise, it will throw an error if the filename contains spaces.
echo "${date}: ${note}" >> "${filename}"
echo "notes saved in ${filename}"