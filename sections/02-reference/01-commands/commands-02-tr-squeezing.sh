#!/bin/bash

echo "Using the tr command to translate characters."

# Squeezing
# Squeeze a set of characters.
# tr --squeeze-repeats <setA>
# tr -s                <setA>
# This reduces multiple characters found in set A to a single instance.

# Translate a into X
echo "--------------------"
value="aaaa1111"
echo "0: $value" | tr --squeeze-repeats a1

# Same again but with -s short hand option.
echo "--------------------"
value="aaaa1111"
echo "1: $value" | tr -s a1
echo

# Remove blank lines
echo "--------------------"
twolines="2: Line1\n\nLine2"
result=$(echo -e $twolines | tr -s '\n' )
#echo -e $twolines | tr -s '\n'
echo -e "$result"
echo

# Remove vertical & horizonal space, using a character class.
echo "--------------------"
twolines="3: This    is    Line 1 \n\n\n\n\n\n\n\n3: This    is    Line 2"
result=$(echo -e $twolines | tr -s '[:space:]' )
#echo -e $twolines | tr -s '\n'
echo -e "$result"
echo

# Remove multiple new lines.
# Notice that a dot and a newline does not constitute a repeated character.
# So there are three new lines and three dots between 'Section 1 & 2'.
echo "--------------------"
twolines="4: Section 1\n.\n.\n.\n\n\n\n\n4: Section 2"
result=$(echo -e $twolines | tr -s '[:space:]' )
#echo -e $twolines | tr -s '\n'
echo -e "$result"
echo

# Remove multiple new lines return
echo "--------------------"
text=$(cat sample.txt)
result=$(echo -e "$text" | tr -s '\n' )
echo -e "$result"
echo "--------------------"
echo
