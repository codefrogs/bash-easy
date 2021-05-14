#!/bin/bash
# Bash-easy by Codefrogs
# Using the if statement
echo "Bash-easy by Codefrogs"
# Using if with integers
# No floats here!

name1="Napier"
name2="Pascal"
if [ $name1 == $name2 ]; then
  echo "Same name!"
else
  echo "Different"
fi

# Ordering of strings
# Notice the backward-slash for the greater sign.
apple="Apple"
pinea="Pinapple"
if [ $apple \> $pinea ]; then
  echo "Apple comes after Pinapple?!"
else
  echo "Pinapple comes after Apple."
fi

if [ $apple \< $pinea ]; then
  echo "Apple is less than Pinapple."
fi

other="Apple"
if [ $apple == $other ]; then
  echo "Apple is the same as Apple."
fi

pear="Pear"
if [ $apple != $pear ]; then
  echo "Apple is not a Pear."
fi
