#!/bin/bash
# Bash-easy by Codefrogs
#
# Defining variables is easy. Bash treats everything as a string or an integer.
#
echo "Bash-easy by Codefrogs"
echo
echo "Defining Variables"
echo "See the script to see how!"
echo

# Defining some variables
# Notice there's no space between the name and the value.
#
myvar="The answer to everything is:"  # string
answer='42'      # string
veg="Potato"     # string
product="chair"  # string
bird=chicken     # string
height=98        # integer
width=23.3       # float (although is treated as a string!)

# Declare integers
declare -i dist=145 # Declaring an integer, (which can't be changed to a string)
                    # see: declare --help

# Floats?
# width = 23.3   # NO! Floats aren't supported.

#Constant Variables
readonly gravity=9.81
readonly dob="17/05/1988"

# We can't do this with readonly variables.
# gravity=1.0

# You can clear a variable like this:
unset myvar  # No longer defined.
echo "1: myvar: $myvar (EMPTY!)"

# Uncomment to see what effect 'declare' has.
# echo "dist (before)= $dist"
# dist='a'
# echo "dist (after)= $dist"
#
# echo "height (before)=$height"
# height='bac'
# echo "height (after)=$height"
