#!/bin/bash
# Bash-easy by Codefrogs
# Running another script, and using the return code.
echo "Bash-easy by Codefrogs"
echo

echo "A: Running script: data/sample_script.sh"
echo

# Run a script
data/sample_script.sh

# Get the exit result
result=$?

# Display the result (0->SUCCESS, otherwise failure)
if (( result!=0 )); then
  echo "Error: $result"  # As the script returns some non-zero number.
else
  echo "X: OK!"
fi
