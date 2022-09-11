#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"

# Logic statements
#
# These examples show how you can use logic statements in a test.
# We cover logical AND, OR, and NOT.
#

model="EV6"
make="Kia"
mini="Mini"
bmw="BMW"

mymodel=$mini
mymake=$bmw

# Should fail. Notice the spaces around the equal sign!
# It will not work as expected otherwise.
if [ $mymodel == $model ]; then
  echo "X:Found model."
else
  echo "1: Unknown model: $mymodel"
fi

# Same again, but should be true.
if [ $mymodel == $mini ]; then
  echo "2: Found a $mini!"
else
  echo "X: Not a ${mini}!"
fi

# Negation check. Notice the spaces around negation.
# It won't work properly otherwise.
if [ $mymake != $make ]; then
  echo "3: Unknown make: $mymake"
else
  echo "X: Found car make!"
fi

if [ $mymake != $bmw ]; then
  echo "X: NOT a $bmw"
else
  echo "4: Found a ${bmw}!"
fi

# Alternative NOT example, with NOT operator outside test
if ! [ $mymake == "mushroom" ]; then
  echo "5: Make is NOT a mushroom."
else
  echo "X: Found a ${bmw} AGAIN!"
fi

type="terrace"
location="Hull"
newhome="true"

if [[ $type == "terrace" && $location == "Hull" && $newhome == "true" ]]; then
  echo "6: House: Match found"
fi

if [[ $type == "flat" && $location == "Hull" && $newhome == "true" ]]; then
  echo "X: House: Match found"
fi

if [[ $type == "terrace" || $location == "York" || $newhome == "true" ]]; then
  echo "7: House: Partial Match found"
fi

if [[ $type == "detaced" || $location == "Glasgow" || $newhome == "false" ]]; then
  echo "X: Home: Found a partial match!!!"
fi
