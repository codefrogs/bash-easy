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
# width = 23.3   # NO!

#Constant Variables
readonly gravity=9.81
readonly dob="17/05/1988"

# We can't do this with readonly variables.
# gravity=1.0
