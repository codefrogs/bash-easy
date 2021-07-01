#!/bin/bash
# Bash-easy by Codefrogs
# Display the list of arguments (attempt 2!).
# This script uses '$*'.
# In an attempt to handle items with spaces, we quote the '$*'.
# BUT! When "$*" gets expanded, its turns into a single item, e.g.:
#   "My Books My Notes My Music"
#
# inter-04.2-display.sh
#

i=0
for arg in "$*"; do
   echo "Item $i: $arg"
   (( i++ ))
done
