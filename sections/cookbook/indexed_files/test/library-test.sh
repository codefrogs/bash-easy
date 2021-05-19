#!/bin/bash

# Tests functions in the library
set -u  # Exit on unknown variables
source "../../../testing/library.sh"

echo "Indexed files Testing"
echo "---------------"
echo

filename="02-attractor.txt"
index=$(get_index "$filename")
if ((index==2)); then
   echo "T$test:OK"
else
   echo "T$test:NOK"
fi
