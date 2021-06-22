#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo
echo "Strings"
echo "-------"
echo

# Getting the string length using '#'
# We will see '#' again when using 'arrays'.
path=$(pwd)
length=${#path}
echo "1: path = $path"
echo '1: Using: length=${#path}'
echo "1: Length of '\$path': $length"
echo

user_name=${user:-"anonymous"}
echo "2: Undefined '\$user' example."
echo "2: Using '\${user:-\"anonymous\"}'"
echo "2: User name: $user_name"
echo "2: Note: User variable '\$user' is not assigned: $user"
echo

user_name=${user:="Root"}
echo "3: Using '\${user:=\"Root\"}': User name: $user_name"
echo "3: Note: User variables '\$user' is assigned: $user"
