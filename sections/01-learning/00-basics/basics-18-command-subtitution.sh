#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
# Using 'command substitution' to set a variable with output from a command.

# Running a command, and setting a variable
iam="$(whoami)"

echo "User is: $iam"

#Get all processes
processes="$(ps -a)"
echo "$processes"
