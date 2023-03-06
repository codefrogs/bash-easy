#!/bin/bash
# Bash-easy by Codefrogs
#set -e
echo "Bash-easy by Codefrogs"
echo

echo "Using for with a range: Brace Expansion"

# Go through a range of values from 1 to 50 in steps of 3
for i in {1..50..6}; do
  echo $i
done

