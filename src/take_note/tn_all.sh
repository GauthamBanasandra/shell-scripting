#!/usr/bin/env bash
# $1 captures only the first argument.
# Use $* to capture all the arguments.

# Command substitution is $(cmd)
echo $(date): $* >> notes_all.txt