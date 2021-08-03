#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"

#printing some names
printf "%s " "Brian" "Jason" "Xavier"
printf "\n"
printf "%s " "Craig" "Lisa" "Teressa"
printf "\n"

#Lets add some spacing
printf "%10s" "Brian" "Jason" "Xavier"
printf "\n"
printf "%10s" "Craig" "Lisa" "Teressa"
printf "\n"

# Aligning left
printf "%-10s" "Brian" "Jason" "Xavier"
printf "\n"
printf "%-10s" "Craig" "Lisa" "Teressa"
printf "\n"

#Printing three strings
name=Manager
lines=105
file=manager.cpp

printf "%s " $name $lines $file
printf "\n"

#Now we had some fixed spacing, let's say we need:
# 15 spaces for the name
#  8 spaces for the lines
# 20 spaces for the filename
printf "%15s %8d %20s" $name $lines $file
printf "\n"

#Lets add some borders.
printf "| %15s | %8d | %20s |" $name $lines $file
printf "\n"

# We notice these are right aligned.
# Lets align the name and filename to the left!
printf "| %-15s | %8d | %-20s |" $name $lines $file
printf "\n"
