#!/bin/bash
echo "Bash-easy by Codefrogs"

#
#A simple function that just outputs to screen
#

# We can't call our functions here.
# They must be defined first!

# Definitions:
function do_something(){
  echo "do_something: simple function called."
}

# Alternative without 'function'
# But needs to have the parenthesis '()'.
do_stuff(){
  echo "do_stuff: whatever you like."
}

# A function using the keyword 'function' doesn't
# need to have the parenthesis '()'.
function display_this {
  echo "This is: $1"
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

# Now we can use the functions.
# And calling a function is easy
do_something
do_stuff

# Use a parameter
display_this "a parameter here"

# Get a string value
datenow=$( get_date )
echo "Date now: $datenow"

# Get integer using same method
p=$(get_prime)
echo "Prime: $p"

# Using return
get_status
state=$?
echo "Status: $state"
