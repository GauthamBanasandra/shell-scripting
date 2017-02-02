#!/usr/bin/env bash
# This script demonstrates how to read input into multiple variables.

echo "enter some words"
read word1 word2
# The input is split with the default delimiter (space) and the first element is put into the first variable and the
	# rest of the elements are put into the second variable.
echo "word1 contains ${word1}"
echo "word2 contains ${word2}"

# Set the default delimiter by assigning it to the "IFS" variable.
IFS=:
# Now, : is the delimiter
echo "now, enter some more words"
read var1 var2
echo "var1 contains ${var1}"
echo "var2 contains ${var2}"
