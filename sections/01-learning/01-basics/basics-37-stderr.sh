#!/bin/bash
# Bash-easy by Codefrogs
# Shows how to output to stderr (standard error)

# When we have an error, we usually output to stderr.
#
if [[ ! -v $unknown_var ]]; then
  printf "Variable not set!\n" >&2  # redirects stdout to stderr
else
  print "X: Found variable\n"
fi
