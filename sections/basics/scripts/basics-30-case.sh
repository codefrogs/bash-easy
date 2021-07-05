#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"

# Using the case statement.

# Simple integer example
i=2
case $i in
  0) echo "1: Case i=0" ;;
  1) echo "1: Case i=1" ;;
  2) echo "1: Case i=2" ;;
  3) echo "1: Case i=3" ;;
esac

# Simple text example
name="Carl Gauss"
case $name in
  "Albert Einstein") echo "2: name = Einstein" ;;
  "Issac Newton")    echo "2: name = Newton" ;;
  "Carl Gauss")      echo "2: name = Gauss" ;;
  "Bart Simpson")    echo "2: name = Bart" ;;
esac

# Catch-all using '*'
# Notice there are no quotes.
option="d"
case $option in
  f) echo "3: file" ;;
  v) echo "3: verbose ON" ;;
  h) echo "3: show help" ;;
  q) echo "3: quiet mode" ;;
  *) echo "3: unknown option $option";;
esac

# Using 'glob' patterns
option="help"
case $option in
  f|file)    echo "4: file" ;;
  v|verbose) echo "4: verbose ON" ;;
  h|help)    echo "4: show help" ;;
  q|quiet)   echo "4: quiet mode" ;;
  *)         echo "4: unknown option $option";;
esac

# Using 'glob' patterns
file="basics-01-intro.sh"
case $file in
  *.txt)        echo "5: text file *.txt" ;;
  *.sh)         echo "5: script file *.sh" ;;
  basics*.sh)   echo "5: basics script file." ;;
  advanced*.sh) echo "5: advanced script file" ;;
  *.*)          echo "5: file with extension" ;;
  *)            echo "5: unknown option $option";;
esac

# Using 'glob' ranges
level="g"
case $level in
  [a-c]) echo "6: Critical [a-c]" ;;
  [d-g]) echo "6: Urgent   [d-g]" ;;
  [h-m]) echo "6: Important[h-m]" ;;
  [n-q]) echo "6: Nominal  [n-q]" ;;
  *)     echo "6: Unknown alert level: $level"
esac

# Integer ranges > 9 ?
# NO! Use if-else.
# Because the code below isn't going to work as expected!
#

num=5  # is OK
# num="42" # is NOT OK
case $num in
  [1-3]) echo "X:1-3" ;;
  [4-5]) echo "7: 3-5" ;;
  [6-9]) echo "X: 6-9" ;;
  [10-30]) echo "X: 10-30" ;;
  [31-100]) echo "X: Meaning of life."
esac
