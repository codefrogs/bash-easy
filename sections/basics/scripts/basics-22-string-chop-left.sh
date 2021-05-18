#!/bin/bash
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
