#!/bin/bash
# Bash-easy by Codefrogs

# We can convert a string to upper case using '^^'.
# Likewise we can use ',,' to convert to lower case.
# To help remember '^^', think of '^' as an arrow pointing UP for uppercase.
# I tend to use the phrase 'Up Up and away!', (a 1967 song!) to help me
# remember which is which. Notice the two UPs.

echo "Bash-easy by Codefrogs"
echo

echo "Expand variables into upper and lower case"
echo "------------------------------------------"
echo
# TODO
dickins="it was the best of times, it was the worst of times..."
aurelius="YOU have POWER over your mind - NOT outside events."
# proverb="a journey of a thousand miles begins with a single step."

echo "1: Dickins     : $dickins"

uppercase=${dickins^^}
echo "2: Uppercase ^^: $uppercase"

uppercase=${dickins^}
echo "3: Uppercase  ^: $uppercase"
echo

echo -e "4: Aurelius    : $aurelius"

lower_case=${aurelius,,}
echo -e "5: Lowercase ,,: $lower_case"

lower_case=${aurelius,}
echo -e "6: Lowercase  ,: $lower_case"
