#!/bin/bash
# Bash-easy by Codefrogs
# Running another script, and using the return code.

echo "A: Running script: data/sample_script.sh"
echo
data/sample_script.sh
result=$?
echo "B: Result: $result"
