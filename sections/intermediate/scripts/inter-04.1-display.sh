#!/bin/bash
# Bash-easy by Codefrogs
# Display a list of arguments.
# This script uses '$*'.
# Every item in '$*' is treated as a seperate item.
# It's OK for items that would NEVER contain spaces.
#
# inter-04.1-display.sh
#

i=0
for arg in $*; do
   echo "Item $i: $arg"
   (( i++ ))
done
