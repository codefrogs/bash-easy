#!/bin/bash
# Bash-easy by Codefrogs
# A sample script for 'inter-xx-execute-script'
echo "1: Connected to database Milow17."
echo "2: Found customer: ANB-2529"
echo -e "3: Disconnecting..."
sleep 1
echo "Timed out!" >& 2
exit 122
