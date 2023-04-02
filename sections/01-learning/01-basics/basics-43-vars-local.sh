#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"

# When creating more complicated functions you will likely want
# to have some local variables.
# Normally a variable is 'global', i.e. it can be defined anywhere,
# and used anywhere. This can quickly get confusing!

# Using local variables in a function

function get_user 
{
  local user=${1}  # Remember we have a global user set to 'chilli'.

  if [ "$user" = "root" ]; then
    user="Default"  # Don't allow root.
  fi
  echo $user
}

#Let's display the user.
user="chilli"
other=$(get_user "root")

echo "1: user : $user"  # left unchanged!
echo "2: other: $other" # Default user.
