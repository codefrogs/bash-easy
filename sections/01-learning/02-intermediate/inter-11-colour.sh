#!/bin/bash
# Bash-easy by Codefrogs
#set -e
echo "Bash-easy by Codefrogs"
echo

# Define some colours first
# Foreground
BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
ORANGE="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
CYAN="\033[36m"
GREY="\033[37m"
CEND="\033[39m" # default foreground

# Background
BG_BLACK="\033[40m"
BG_BRED="\033[41m"
BG_GREEN="\033[42m"
BG_ORANGE="\033[43m"
BG_BLUE="\033[44m"
BG_MAGENTA="\033[45m"
BG_CYAN="\033[46m"
BG_GREY="\033[47m"
BG_CEND="\033[49m" # default background

#CEND="\033[0m"

echo -e "Test A: ${GREEN}PASSED${CEND}"
echo -e "Test B: ${RED}FAILED${CEND}"

echo
echo "Colours (Foreground)"
echo "-------"
echo -e "Black:   ${BLACK}black${CEND}"
echo -e "Red:     ${RED}red${CEND}"
echo -e "Green:   ${GREEN}green${CEND}"
echo -e "Orange:  ${ORANGE}orange${CEND}"
echo -e "Blue:    ${BLUE}blue${CEND}"
echo -e "Magenta: ${MAGENTA}magenta${CEND}"
echo -e "Cyan:    ${CYAN}cyan${CEND}"
echo -e "Grey:    ${GREY}grey${CEND}"
echo "Normal: normal"

echo "Colours (Background)"
echo "-------"
echo -e "Black:   ${BG_BLACK}black${BG_CEND}"
echo -e "Red:     ${BG_RED}red${BG_CEND}"
echo -e "Green:   ${BG_GREEN}green${BG_CEND}"
echo -e "Orange:  ${BG_ORANGE}orange${BG_CEND}"
echo -e "Blue:    ${BG_BLUE}blue${BG_CEND}"
echo -e "Magenta: ${BG_MAGENTA}magenta${BG_CEND}"
echo -e "Cyan:    ${BG_CYAN}cyan${BG_CEND}"
echo -e "Grey:    ${BG_GREY}grey${BG_CEND}"
echo "Normal: normal"

