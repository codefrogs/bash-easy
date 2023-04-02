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
CSTD="\033[39m" # default/standard foreground

# Background
BG_BLACK="\033[40m"
BG_BRED="\033[41m"
BG_GREEN="\033[42m"
BG_ORANGE="\033[43m"
BG_BLUE="\033[44m"
BG_MAGENTA="\033[45m"
BG_CYAN="\033[46m"
BG_GREY="\033[47m"
BG_CSTD="\033[49m" # default background

BOLD="\033[1m" # Bold format
ITALIC="\033[3m" # Italic format
CEND="\033[0m" # No colour, no formatting

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
echo    "Normal:  normal"
echo
echo "Colours (Background)"
echo "-------"
echo -e "Black:   ${BG_BLACK}black${CEND}"
echo -e "Red:     ${BG_RED}red${CEND}"
echo -e "Green:   ${BG_GREEN}green${CEND}"
echo -e "Orange:  ${BG_ORANGE}orange${CEND}"
echo -e "Blue:    ${BG_BLUE}blue${CEND}"
echo -e "Magenta: ${BG_MAGENTA}magenta${CEND}"
echo -e "Cyan:    ${BG_CYAN}cyan${CEND}"
echo -e "Grey:    ${BG_GREY}grey${CEND}"
echo    "Normal:  normal"
echo
echo "Formatting"
echo "----------"
echo -e "Bold:    ${BOLD}bold${CEND}"
echo -e "Bold Red:${BOLD}${RED}bold-red${CEND}"
echo -e "Italic: ${ITALIC}italic${CEND}"
echo
echo "You can even use these colours in your prompt string PS1."
