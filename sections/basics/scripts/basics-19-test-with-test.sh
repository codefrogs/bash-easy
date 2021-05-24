#!/bin/bash
# Lets explore testing with 'test'.
#
# To get information on the use of 'test', type at the command line:
# 'help test`
#

# Test to see if this file exists.
filename="basics-27-test-brackets-away.sh"
if test -e $filename; then
  echo "1: File exists: $filename"
else
  echo "1: File not found: $filename"
fi

# Check is a file is a directory
if test -d $filename; then
  echo "2: File is a directory: $filename"
else
  echo "2: File is not a directory: $filename"
fi

# Now we test if a string is empty.
an_empty_string=""
if test -z $an_empty_string; then
  echo "3: String is empty: $an_empty_string"
else
  echo "3: String is not empty: $an_empty_string"
fi

# Now we test if a string is not empty.
some_text="Hello!"
if test -n $some_text; then
  echo "4: String is NOT empty: $some_text"
else
  echo "4: String is empty: $some_text"
fi

# Check string equality.
# Notice that we use double quotes here! This is because there's a space in
# the string.
hello="Hello World!"
if test "$hello"=="Hello World!"; then
  echo "5: Greetings found."
else
  echo "5: WRONG TEXT!"
fi

# Check string inequality.
bark="meow meow"
if test "$bark"!="Woof! Woof!"; then
  echo "6: Dog is unwell."
else
  echo "6: Dog barked!"
fi

# Note, if you don't like using 'test', you can use '[]' instead.
