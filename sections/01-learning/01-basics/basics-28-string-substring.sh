#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo
echo "Sub-strings"
echo "-----------"
echo

echo "        12345"
echo "             123456789"
text="Extraordinary!"
echo "1: text=$text"

left=${text:0:5}
echo "2: \${text:0:5}=${left}"

right=${text:5:8}
echo "2: \${text:5:8}=${right}"

right=${text:5}
echo "2: \${text:5}=${right}"
