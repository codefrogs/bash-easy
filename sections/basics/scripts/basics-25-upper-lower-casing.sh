#!/bin/bash
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
