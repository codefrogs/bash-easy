#!/bin/bash
# Bash-easy by Codefrogs

i=0
for arg in $@; do
   echo "Arg $i: $arg"
   (( i++ ))
done
