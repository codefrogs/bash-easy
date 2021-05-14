#!/bin/bash

# Tests functions in the library
set -u  # Exit on unknown variables
source "../library.sh"
test=1

echo "Library testing"
echo "---------------"
echo

#Tests if two strings are the same
function test_str
expected=$1
actual=$2
if [$expected eq $actual]; then
   echo "T$test:OK"
else
   echo "T$test:NOK"
fi



filename="02-attractor.txt"
index=$(get_index "$filename")
if ((index==2)); then
   echo "T$test:OK"
else
   echo "T$test:NOK"
fi
