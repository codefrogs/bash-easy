#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo
echo "String chopping from the left."
echo
# Summary of operators
# Using '%'
# This means remove from the right the shortest match.
# Using '%%'
# This means remove from the right the most that matches.
#
# Using '#'
# This means remove from the left the shortest match.
# Using '##'
# This means remove from the left the most that matches.
#
# A way to remember which operator is which, is to think of
# the '#' as being a railroad track, with a train running left to right eating
# characters as it goes.
# The head of the train has two eyes of course; the '%' operator!
# ################% choo-choo! --->
# The hungry character eating train!

# A path to a document.
val="//home/robert/Documents/thesis.doc"
echo "0 path  is  : $val"

# Remove first forward-slash
# Here we use '#'.
result="${val#/}"
echo "1 using #/  : $result"

# Remove first forward-slash
# In this case * can match zero characters.
# For this reason this line, line 2 is the same as line 1.
result="${val#*/}"
echo "2 using #*/ : $result"

# Using '##' -> remove the longest match.
# However our pattern is a single character!
result="${val##/}"
echo "3 using ##/ : $result"

# Get the filename
# Using '##' -> remove the longest match.
# Our pattern can contain multiple characters and end in '/'.
# Alternatively use 'basename'.
result="${val##*/}"
echo "4 using ##*/: $result"

# This matches everything
result="${val##/*}"
echo "5 using ##/*: $result"

# Remove the first match from the left using '#'
# Get the extension.
result="${val#*.}"
echo "6 using #*. : $result"

echo
sentence="peter picked a pick of pickled peppers."
echo "7 Sentence is  : $sentence"
result=${sentence##*pick}
echo "8 using ##*pick: $result"
echo

# Example of removing lines of text with newline character
bar="-----"
line="$bar\n"

# Using line continuation here with '\'
# Notice we have to use {} notation otherwise the text get's mixed up with
# variable names.
header="${line}\
Title\n\
${line}"

echo -e "9:Example header:\n$header"

header="${header#$bar\\n}"
echo "Removed bar line:"
echo -e "$header"

header="${header#*\\n}"
echo "Removed title line:"
echo -e "$header"

# But watch out!
header=$(echo -e "${line}\
Title\n\
${line}")

echo -e "10:Gotcha header:\n$header"
echo

header="${header#$bar\\n}"  # Will not work...'\n' is just text!
echo "Trying to remove bar line:"
echo -e "$header"
echo

header="${header#$bar[[:space:]]}"
echo "Finally removed bar line:"
echo -e "$header"
