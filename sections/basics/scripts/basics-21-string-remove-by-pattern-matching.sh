#!/bin/bash
echo "String pattern matching."
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

# Some line of text. Notice the two pm's.
val="The time is 12:45 pm pm"

# Remove the first instance of a match from the left.
# Here we use '%'.
# Removing 'pm'
no_pm="${val%pm}"
echo "1: $no_pm"

# Remove the first instance of a match using '%%'
# Removing 'pm'
no_pm="${val%%pm*}"
echo "2: $no_pm"

# Remove the time.
# Matching as many characters as possible using '%%'
# In this case some digit followed by any character (represented by '*').
match="${val%%[[:digit:]]*}"
echo "3: $match"

# Remove the first match from the left using '%'
# Matching some number/digit + some characters.
# The first match is just '5 pm'
match="${val%[[:digit:]]*}"
echo "4: $match"
