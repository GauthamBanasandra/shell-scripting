#!/usr/bin/env bash
# Create variables by: var=<val>
greeting="hello"
# Remember, do not put space on either sides of '='.
# If there's space on either sides of '=' (like: greeting = "hello"), bash will interpret it as it needs to execute the
# 	command 'greeting' with = and "hello" as arguments.

# Retrieve the variable's value by $var or ${var}
echo ${greeting}