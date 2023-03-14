#!/bin/bash
# Bash-easy by Codefrogs
#set -e
echo "Bash-easy by Codefrogs"
echo

RED="\033[31m"
GREEN="\033[32m"
CEND="\033[0m" 

# Dictionary example
echo "Dictionary / Associate array example"
echo

declare -A results
results=([pivot]="true" [pullover]="false" [lever]="true" [rope]="true")

# Alternative
for key in ${!results[*]}; do

  key_val=${results[$key]}

  if [[ ${key_val} == "true" ]]; then
    echo -e "${key}: ${GREEN}PASSED${CEND}"
  else
    echo -e "${key}: ${RED}FAILED${CEND}"
  fi
done

