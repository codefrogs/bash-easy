#!/bin/bash
# Bash-easy by Codefrogs
#set -e
echo "Bash-easy by Codefrogs"
echo

# Supported colours on your terminal
colours_available=$(tput colors)

echo "Supported colours: $colours_available"
c_end=$(( $colours_available -1 ))

echo "Foreground colours:"
for c in $(seq 1 $c_end); do
  tput setaf $c
  echo -n "$c "
done
echo
echo "Background colours:"
for c in $(seq 1 $c_end); do
  tput setab $c
  echo -n "$c "
done

# tput setaf ${c_end} # for white foreground
# tput setab 0 # setaf 0 # for black background

tput init # reset to defaults
echo
echo "That was fun!"

