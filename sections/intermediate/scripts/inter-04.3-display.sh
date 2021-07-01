#!/bin/bash
# Bash-easy by Codefrogs
# Display the list of arguments, that handles items with spaces.
# This script uses '$@': The list of items
# This gives each item as a list of quoted items.
# For example "$@" might look like the following:
#   "My Books" "My Notes" "My Music"
#
# inter-04.3-display.sh
#

i=0
for arg in "$@"; do
   echo "Item $i: $arg"
   (( i++ ))
done
