#!/bin/bash
# Bash-easy by Codefrogs
# We show how to write text to a file.
#
echo "Bash-easy by Codefrogs"
echo

# Simple case: Creating a file using '>'.
echo "1: Creating a new file using '>'"
echo "--------------------------------"
echo "This is a simple one line example." > tmp-file.txt

# We can also append to an existing file, or
# Create a new file using '>>'.

lines=( "Line 1" "Line 2" "Line 3" "Line 4" )  # Some lines of text

# Writing a file line by line
echo "2: Writing line by line using '>>'"
echo "----------------------------------"
for line in "${lines[@]}"; do
  echo "$line" >> tmp-file.txt  # Here >> means append
done 
echo

echo "Created: tmp-file.txt"
