#!/bin/bash
# Bash-easy by Codefrogs
# Script to show basic operation of getopts.
echo "Bash-easy by Codefrogs"
echo

path=$(dirname $0)
echo $path
script_name="inter-06.1-getopts-raw.sh"
script="$path/$script_name"

# Single option
echo "1: $script -v"
      $script -v
echo
echo

# Handling options + positional.
echo "2: $script_name -v beef stew"
      $script -v beef stew
echo
echo

# option with a parameter <user>
echo "3: $script_name -u tanner"
      $script -u tanner
echo
echo

# Compound options 'vl'
echo "4: $script_name -vi mushroom.log"
      $script -vi mushroom.log
echo
echo

# Use am unknown option
# getopts prints out its own error message.
echo "5: $script_name -q"
      $script -q
echo
echo
