#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo

result=false
if [ $result == false ]; then
  echo '1: $result = false :('
else
  echo 'X: $result = true :)'
fi

result=true
if [ $result == false ]; then
  echo 'X: $result = false :('
else
  echo '2: $result = true :)'
fi

# A simpler way
result=true
if $result; then
  echo '3: PASS!'
else
  echo 'X: FAIL!'
fi

result=false
if $result; then
  echo 'X: PASS!'
else
  echo '4: FAIL!'
fi

# An even simpler way perhaps
result=true
$result && echo "5: PASS"

result=false
$result && echo "X: PASS"

result=false
$result || echo "6: FAIL!"

result=true
$result || echo "X: FAIL!"
