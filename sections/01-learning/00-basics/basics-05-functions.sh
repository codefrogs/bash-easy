#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"

echo "A function call test script, which displays the user."
user=$(whoami)  # we make a variable

#A simple display function
function display_user {
  echo "Current User: $user"
}

#Let's display the user.
display_user  # Should display the current user.
