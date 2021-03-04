#!/bin/bash

MYVAR="The answer to everything is: "
echo -n ${MYVAR}  # the -n means, no new line

read ANS

echo "${MYVAR} ${ANS}"
