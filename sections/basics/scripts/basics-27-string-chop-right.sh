#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo
echo "String chopping from the right."
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
val="Three pm's - time now: 12:45 pm pm"
echo "0 sentence is         : $val"

# Remove the first instance of a match from the left.
# Here we use '%'.
# Removing 'pm'
result="${val%pm}"
echo "1 using %pm           : $result"

# Remove the first instance of a match from the left.
# Here we use '%', but '*' matches zero characters.
# For this reason this line, line 2, is the same as line 1
# Removing 'pm'
result="${val%pm*}"
echo "2 using %pm*          : $result"

# Remove matching pm's using '%%'
# Matches 'pm's - time now: 12:45 pm pm'
# i.e. pm<some text>
result="${val%%pm}"
echo "3 using %%pm          : $result"

# Remove matching pm's using '%%'
# Matches 'pm's - time now: 12:45 pm pm'
# i.e. pm<some text>
result="${val%%pm*}"
echo "4 using %%pm*         : $result"

# Remove the first match from the left using '%'
# Matching some number/digit + some characters.
# The first match is just '5 pm pm'
result="${val%[[:digit:]]*}"
echo "5 using %[[:digit:]]* : $result"

# Remove the time.
# Matching as many characters as possible using '%%'
# In this case some digit followed by any character (represented by '*').
# This matches '12:45 pm pm'.
result="${val%%[[:digit:]]*}"
echo "6 using %%[[:digit:]]*: $result"
