#!/usr/bin/env bash
# The first line is called "shebang" line. It's supposed to specify the interpreter to use for the code that follows.
# So, one could even specify the path to the python executable and the shell will use python for running the code.
# By default, the script files won't have the permission to execute.
# So, remember to change the permission of the script file by using $chmod u+x <filename>.
# All comments begin with a hash.

# $<n> is the nth argument to the script.
echo $1 >> notes.txt