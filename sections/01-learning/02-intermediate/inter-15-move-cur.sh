#!/bin/bash
# Bash-easy by Codefrogs
#set -e
echo "Bash-easy by Codefrogs"
echo

UP="\033[1A"
DOWN="\033[1B"
LEFT="\033[1D"
RIGHT="\033[1C"

echo -e "ABCDEFGHIJKLMNOPQURSTUVWXYZ${UP}"

t=$(date "+%H:%M:%S")
echo "Current time: $t"

