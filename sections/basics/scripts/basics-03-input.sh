#!/bin/bash
echo "Bash-easy by Codefrogs"

MYVAR="What is the answer to everything?:  "
echo -n ${MYVAR}  # the -n means, no new line

read ANS
echo
echo -n "Deepthought: "
echo -n "The answer to the ultimate question of life, the universe, and everything is..."
sleep 2
echo "${ANS}!"
