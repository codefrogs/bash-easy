#!/bin/bash
# Bash-easy by Codefrogs
# Handling arguments, argument lists, and arguments with spaces.
#
echo "Bash-easy by Codefrogs"
echo

# This script just calls all the other scripts

# Handling multiple parameters
echo "1: ./inter-04.1-display.sh elephant mouse cat dog piglet"
./inter-04.1-display.sh elephant mouse cat dog piglet
echo

#Display 2 items with spaces:
item1="My Books"
item2="My Notes"
item3="My Music"

echo "2: ./inter-04.1-display.sh \"$item1\" \"$item2\" \"$item3\""
./inter-04.1-display.sh "$item1" "$item2" "$item3"
echo
#The quotes were ignored!

# How to handle items with spaces!
echo "3: ./inter-04.2-display.sh \"$item1\" \"$item2\" \"$item3\""
./inter-04.2-display.sh "$item1" "$item2" "$item3"
echo

echo "4: ./inter-04.3-display.sh \"$item1\" \"$item2\" \"$item3\""
./inter-04.3-display.sh "$item1" "$item2" "$item3"
echo

# Parameters with spaces! Oh no!
#a="My cv.doc"; b="My cat bugs.jpg"; c="The Sales Report 2018.doc"
#echo "4: ./inter-03D-load.sh \"$a\" \"$b\" \"$c\""
#./inter-03C-load.sh "$a" "$b" "$c"
# A script that accepts a 'verbose' option
#inter-03C.sh -v row column
