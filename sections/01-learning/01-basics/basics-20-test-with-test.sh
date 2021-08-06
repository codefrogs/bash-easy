#!/bin/bash
# Bash-easy by Codefrogs
# Lets explore testing with 'test'.
#
# To get information on the use of 'test', type at the command line:
# 'help test`
#
echo "Bash-easy by Codefrogs"
echo
echo "Using 'test'"
echo "------------"
echo

# Test to see if this file exists.
filename="basics-20-test-with-test.sh"
if test -e $filename; then
  echo "1: File exists: $filename"
else
  echo "X: File not found: $filename"
fi

# Check if a file is a directory
if test -d $filename; then
  echo "X: File is a directory: $filename"
else
  echo "2: File is not a directory: $filename"
fi

# Now we test if a string is empty.
# (To remember think of: Zero length)
an_empty_string=""
if test -z $an_empty_string; then
  echo "3: String is empty: $an_empty_string"
else
  echo "X: String is not empty: $an_empty_string"
fi

# Now we test if a string is not empty.
# (To remember think of: Not Nothing or Numerous Noodles)
some_text="Hello!"
if test -n $some_text; then
  echo "4: String is NOT empty: $some_text"
else
  echo "X: String is empty: $some_text"
fi

# Check string equality.
# Notice that we use double quotes here! This is because there's a space in
# the string.
hello="Hello World!"
if test "$hello" = "$hello"; then
  echo "5: Equality test: '$hello' = '$hello'."
else
  echo "X: WRONG TEXT!"
fi

True="True"
False="False"
if test "$True"="$False"; then
  echo "6: BAD CODE: '$True'='$False' -> Watch your spaces!"
fi

#Non standard equality operator '=='
group="group12"
if test "$group" == "$group"; then
  echo "7: Non standard equality operator '==': '$group' == '$group'."
else
  echo "X: WRONG TEXT!"
fi

# Check string inequality.
bark="Woof! Woof!"
meow="Meow! Meow!"
if test "$bark" != "$meow" ; then
  echo "8: Operator '!=': '$bark' != '$meow'"
else
  echo "X: Dog barked!"
fi

bark="bark"
if test "$bark"!="$bark" ; then
  echo "9: BAD CODE: '$bark'!='$bark' -> Watch your spaces!"
fi

# Note, if you don't like using 'test', you can use '[]' instead.
