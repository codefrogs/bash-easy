#!/bin/bash
# Bash-easy by Codefrogs
# Running another script, and using the return code.
echo "Bash-easy by Codefrogs"
echo

# Lets call a script that expects two parameters:
row=5004
column=3
echo "1: ./inter-03.1-cell-at.sh $row $column"
./inter-03.1-cell-at.sh $row $column
echo

# This script checks the right number of parameters are entered.
echo "2: ./inter-03.2-cell-at.sh $row $column duck"
./inter-03.2-cell-at.sh $row $column duck
echo
