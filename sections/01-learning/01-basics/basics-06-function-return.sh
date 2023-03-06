#!/bin/bash
# Bash-easy by Codefrogs
#set -e
echo "Bash-easy by Codefrogs"
echo
# ----------------------------------
# Returning a string from a function.
function get_user_name(){
  # Find the user name...
  user_name="Nathan"  # Found it!
  echo $user_name 
}
my_users_name=$(get_user_name)
echo "1: User name: $my_users_name"

# ----------------------------------
# Still returning an integer as a string
function get_flight_speed(){
  echo 330
}
speed=$(get_flight_speed)
echo "2: Flight BA734 - Speed: $speed"

# ----------------------------------
# Using 'return'
# This is a little different from the others.
# Now we are returning an exit code.
# Exit codes indicate success or failure, or just some
# failure error code.
function get_error_code()
{
  return 18 # normally 0=SUCCESS, 1-WARNING, 2-ERROR
}
get_error_code
code=$?
echo "4: Error code: $code"

# ----------------------------------
# Can we get the return code inside a variable?
# We use the same function get_error_code

err=$(get_error_code)
exit_status=$?
echo "5: Error code: $err"         # This will be empty!
echo "5: Exit code : $exit_status" # This will have 18 in it.

# ----------------------------------
# Can we have a return value and an exit code?
function get_sound_filename()
{
  echo "sine.mp3" # normally 0=SUCCESS, 1-WARNING, 2-ERROR
  return 32 # Some error code, e.g. using a default
}

filename=$(get_sound_filename)
exit_status=$?
echo "6: Filename: $filename"     
echo "6: Exit code : $exit_status"


