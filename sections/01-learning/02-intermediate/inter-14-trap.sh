#!/bin/bash
# Bash-easy by Codefrogs
#set -e
echo "Bash-easy by Codefrogs"
echo

function tear_down()
{
  echo
  echo "Tear down."
  echo "Removing temporary files..."
}

trap tear_down EXIT

echo "Press Ctrl-C to trigger trap"

# Long loop
for i in $(seq 1 1000); do
  printf "."
  sleep 1
done

