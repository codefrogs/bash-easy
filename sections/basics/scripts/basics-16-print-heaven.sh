#!/bin/bash
echo "Bash-easy by Codefrogs"
# Using 'print'
# see: basics-06-printf

#Test with escape characters
some_text="I think\nTherefore I am.\nSocrates"

#This works fine (in a real terminal)
printf "$some_text"
echo
printf "Long line:"
printf "This is a rather long line, \
but we can split the text for readability \
without breaking it up when displaying it.\n"
echo
#Print without newlines
printf "Hello "
printf "my "
printf "name "
printf "is "
printf "Plato.\n"
echo

# Print with multiple lines
echo "Display processes"
val=$(ps -a)  # This has at least two lines of text
printf $val     # Doesn't work properly
echo "***Trying again!***"
printf "$val"  # Much better
echo "***Now with a newline***"
printf "%s\n" "$val"
