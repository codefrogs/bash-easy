#!/bin/bash
# A comment: This line above should already be the very first line!
# Another comment!

echo "Hello World!"

#Simple variables
product="chair"
height=98
width=23.3

#Display a variables
echo $product
echo "HxW: " $height $width

#Constant Variables
readonly gravity=9.81
#We can't do this now
#gravity=1.0

echo "Gravity of the Earth:" $gravity

#displing text and varibles together
prefix='data'
suffix='dat'
file=route
echo "File: ${prefix}-${file}.${suffix}"
echo "File: $prefix-$file.$suffix"  # OK
echo "File: $prefix$file$suffix"  # OK
echo "File: ${prefix}FILE-$file.$suffix"  # With brackets!

#Unknown variables
echo "This is known  : $file"
echo "This is unknown: $something"

#Bash configuration: undefined is NOT OK
set -u
echo "This is unknown: $something"

# Revert configration change
# set +u
# echo "This is another: $another"  # ignored
