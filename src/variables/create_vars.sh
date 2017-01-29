#!/usr/bin/env bash
# Create variables by: var=<val>
greeting="hello"
# Remember, do not put space on either sides of '='.
# If there's space on either sides of '=' (like: greeting = "hello"), bash will interpret it as it needs to execute the
# 	command 'greeting' with = and "hello" as arguments.

# Retrieve the variable's value by $var or ${var}
echo ${greeting}

# Be careful when assigning a string with multiple words, that are space separated.
# Always enclose them with double-quotes.
multiple_words="there seems to be more than one word in this line"

# As mentioned earlier, bash simply replaces all the ${} constructs with their respective values. Doesn't care if it's
#	in a string or not.
line="${greeting}, ${multiple_words}"
echo ${line}