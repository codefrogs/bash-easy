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

# Set up some variables to test with.
hello="Hello World!"
greeting=$hello
filename="$0"  # get this file's name.

# Using 'test'
if test -e $filename; then
  echo "1: Check file exists using 'test': $filename"
fi
# Again with single brackets '[]'.
if [ -e $filename ]; then
  echo "2: Check file exists using '[]'  : $filename"
fi
# Same again but with double backets '[[]]'.
if [[ -e $filename ]]; then
  echo "3: Check file exists using '[[]]': $filename"
fi
# All the same!

# Check string equality.
# Notice that we use double quotes here because the string contains a space.
# Try it without to see what happens.
if test "$hello"=="$greeting"; then
  echo "4: String match found with 'test'."
fi
if    [ "$hello"=="$greeting" ]; then
  echo "5: String match found with '[]'."
fi
if   [[ "$hello"=="$greeting" ]]; then
  echo "6: String match found with '[[]]'."
fi
if   [[  $hello == $greeting ]]; then
  echo "7: String match found with '[[]]' but without quotes around variables."
fi

# With double brackets we can use pattern matching and regular expressions!
# Patter matching
if [[ $filename=*.sh ]]; then
  echo "8: Pattern *.sh match with '[[]]': $filename"
fi
# Regular expression
if [[ $filename =~ basics-[[:digit:]]{2}-(-|[[:alpha:]])+\.sh ]]; then
  echo "9: Regex        match with '[[]]': $filename"
fi

# Typically we will use single brackets in many of the subsequent scripts.
