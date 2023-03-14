#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo

# The intent of this script is to make sure you understand
# how to use the return values.

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

# But notice how this fails!
result=notacommand
if $result; then
  echo 'X: Sorry!'
else
  echo '4: Error on test'
fi

result=false
if $result; then
  echo 'X: PASS!'
else
  echo '5: FAIL!'
fi

# An even simpler way perhaps
result=true
$result && echo "6: PASS"

result=false
$result && echo "X: PASS"

result=false
$result || echo "7: FAIL!"

result=true
$result || echo "X: FAIL!"

function some_good_case()
{
  return 0
}

function always_fails_case()
{
  return 2 
}

if (some_good_case); then
  echo "8: Something is OK"
fi

if (always_fails_case); then
  echo "X: No error"
fi

if some_good_case; then
  echo "9: Final test result"
fi
