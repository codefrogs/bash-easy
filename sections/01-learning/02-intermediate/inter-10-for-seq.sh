#!/bin/bash
# Bash-easy by Codefrogs
#set -e
echo "Bash-easy by Codefrogs"
echo

echo "Using for and seq <start> <end>"

# Go through a range of values from 1 to 50 in steps of 3
for i in $(seq 1 4); do
  echo "i: $i"
done

# Alternative
for j in {25..28}; do
  echo "j: $j"
done

