#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"

# Defining some variables
myvar="The answer to everything is:"
answer='42'
product="chair"  # string
height=98        # integer
width=23.3       # float (although is treated as a string!)
bird=chicken     # string
readonly gravity=9.81

# Display variables with 'echo'
echo "$myvar $answer"
echo $product
echo "HxW: " $height $width
echo "Bird: $bird"
echo "Gravity of the Earth:" $gravity
echo

prefix='data'
suffix='dat'
file=route

# Using brackets to allow variables to be printed next to text.
echo "GOOD1: ${prefix}-${file}.${suffix}"  # Alternative way to display variables
echo "GOOD2: $prefix-$file.$suffix"        # Same again...no brackets
echo "GOOD3: $prefix$file$suffix"          # Can safely put together.
echo "BAD  : $prefixBASE-$file.$suffix"    # Broken!
echo "FIXED: ${prefix}BASE-$file.$suffix"  # Fixed by using brackets!
