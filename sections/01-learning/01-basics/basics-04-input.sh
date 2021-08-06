#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"

MYVAR="What is the answer to everything?:  "
echo -n ${MYVAR}  # the -n means, no new line

read ANS  # Get response from user
echo
echo -n "Deepthought: "
echo -n "The answer to the ultimate question of life, the universe, and everything is..."
sleep 2
echo "${ANS}!"
