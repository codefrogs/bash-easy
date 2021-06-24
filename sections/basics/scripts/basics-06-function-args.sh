#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo
#
# A simple function that just outputs to screen
#

# Note: Functions must be defined before they are used.

# Definitions:
function do_something(){
  echo "1: do_something(): simple function called."
}

# Alternative definition without 'function' keyword.
# But needs to have the parenthesis '()'.
do_stuff(){
  echo "2: do_stuff(): whatever you like."
}

# A function using the keyword 'function' doesn't
# need to have the parenthesis '()'.
function display_this {
  echo "display_this: $1"
}

# Returning a string
function get_date ()
{
  r=$(date)
  echo "$r"
}

# Returning an integer
function get_prime ()
{
  echo "101"
}

# Returning a exit code 0-255
function get_status ()
{
  return 86
}
#
# Using the defined functions
# ---------------------------

do_something
do_stuff

# Use a parameter
# Display a message"
printf "3: "
display_this "Look no hands!"

echo "4: Using display_this() without an argument!"
printf "4: "
display_this

# Get a string value
datenow=$( get_date )
echo "5: Date now - datenow(): $datenow"

# Get integer using same method
p=$(get_prime)
echo "6: Prime - get_prime(): $p"

# Get the return status
# 0 -> success, othewise failure.
get_status
state=$?
echo "7: Get an exit code: $state"
