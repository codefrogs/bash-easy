#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"

#Lets look at printf

#No new line with this
printf "Hello World!..."

#For a new line we do:
echo "Using a newline escape character:"
printf "Another line\n"

#An empty new line:
printf "\n"

#A printf with a new line 'escape character, is equivalent to this:
echo "Hello again"

#This is odd though...try this:
#It only prints 'One...'!
echo "Trying to print multiple lines"
printf "One...\n" "Two...\n" "Three...\n"

#Using a format string
#This prints the string, taking the other strings as parameters.
echo "Using a format string:"
printf "%s\n" "1..." "2..." "3..." "4..."
printf "\n"
# Printing two items at a go:
printf "%s %s\n" "1..." "2..." "3..." "4..."

#How about moving the return character into the parameters?
#The return character '\n' is ignored!
echo "Using escape characters:"
printf "%s" "x...\n" "y...\n" "z...\n"  # BAD!

#A fix, we can use the '%b' string to say 'interpret escape characters'.
echo
echo "Using %b in a format string:"
printf "%b" "apple...\n" "pear...\n" "banana...\n"

#Adding default text to the format
echo
echo "Fruit delicious example. Expanding format:"
printf "I love %bs\n" "apple" "pear" "banana"

echo
echo "Using variables"
files=101
issues=5
printf "Files Searched: %d\n" $files
printf "Issues Found : %d\n" $issues
