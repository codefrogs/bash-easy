#!/bin/bash
# Bash-easy by Codefrogs
#
# Lets explore more testing. Below are the three forms:
#
#  - test [expression]  - test method which we have already met.
#  -      [expression]  - single bracket test (easier to understand)
#  -     [[expression]] - double bracket test (with some extra features)
# The expressions contain tests such as equality, inequality, or tests on files.
#
#
echo "Bash-easy by Codefrogs"
echo

# Set up some variables to test with.
hello="hi"
greeting=$hello
bye="bye"
filename="$0"  # get this file's name.

# Using 'test'
# All the same file test.
echo "File testing"
echo "------------"
echo
if test -e $filename; then
  echo "1: Using 'test': File exists: $filename"
fi
# Again with single brackets '[]'.
if [ -e $filename ]; then
  echo "2: Using '[]'  : File exists: $filename"
fi
# Same again but with double backets '[[]]'.
if [[ -e $filename ]]; then
  echo "3: Using '[[]]': File exists: $filename"
fi
echo
echo "String equality"
echo "---------------"
echo
# Check string equality.
# Notice that we use double quotes here because the string contains a space.
# Try it without to see what happens.
if test "$hello" = "$greeting"; then
  echo "4: Using 'test': '$hello' = '$greeting'."
fi

# Negate a test / Using negation with test
if test ! "$hello" = "$bye"; then
  echo "5: Using negation & test: $hello' NOT equal '$bye'."
fi
if test "$hello" = "$bye"; then  # Should never display
  echo "X: '$hello' = '$bye'."
fi

if [ "$hello" = "$greeting" ]; then
  echo "6: Using '[]', '$hello' = '$greeting'."
fi

if [ "$hello" == "$greeting" ]; then
  echo "7: Using non-standard equality operator '==': '$hello' == '$greeting'."
fi


if ! [ "$hello" = "$bye" ]; then
  echo "8: Using negation: '! []', '$hello' does NOT equal '$bye'."
fi

if   [[ "$hello" = "$greeting" ]]; then
  echo "9: Using '[[]]': '$hello' == '$greeting'."
fi

if  ! [[ "$hello" = "$bye" ]]; then
  echo "10: Using negation: '! [[]]', '$hello' does NOT equal '$bye'."
fi

if   [[  $hello = $greeting ]]; then
  echo "11: Using '[[]]' without variable quotes: '$hello' == '$greeting'."
fi

# Watchout... SPACES are important!
if [ "$hello"="$bye" ]; then
  echo "12: MISSING a space: '$hello'='$bye' ... OH NO!"
fi

# With double brackets we can use pattern matching and regular expressions!
# Patter matching
if [[ $filename=*.sh ]]; then
  echo "13: Pattern match, *.sh with '[[]]': $filename"
fi
# Regular expression
if [[ $filename =~ basics-[[:digit:]]{2}-(-|[[:alpha:]])+\.sh ]]; then
  echo "14: Regex match, with '[[]]': $filename"
fi

# Typically we will use single brackets in many of the subsequent scripts.
