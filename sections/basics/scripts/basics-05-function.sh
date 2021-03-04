#!/bin/bash
#
#A simple function that just outputs to screen
#

# We can't call our functions here.
# They must be defined first!

# Definitions:
function do_something(){
  echo "do_something: simple function called."
}

#Alternative without 'function'
do_stuff(){
  echo "do_stuff: no explicit function keyword here!"
}

# Now we can use the functions.
# And calling a function is easy
do_something
do_stuff
