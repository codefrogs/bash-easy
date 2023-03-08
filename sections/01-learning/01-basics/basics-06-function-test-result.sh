#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo

function some_good_case()
{
  return 0  # Always returns success! :)
}

function always_fails_case()
{
  return 2 # Always says it fails! :(
}

if some_good_case; then
  echo "1: Function returns success!"
fi

if always_fails_case; then
  echo "X: No error"
fi

# We could be more verbose

some_good_case
if [ $? == 0 ] ; then
  echo "2: Function returns success again!"
fi

always_fails_case
if [ $? == 0 ]; then
  echo "X: No error"
fi

function get_metal()
{
  echo "Iron"  # Remember this is very different from using 'return'.
}

if [ $(get_metal) == "Iron" ]; then
   echo "3: Iron price: 127$ pt"
fi

function get_date()
{
  echo "2023-03-08"
  return 49
}

price_date=$(get_date)
if [ $? == 49 ]; then
  echo "4: Price date is: $price_date"
  echo "4: But return code is: 49!"
fi
