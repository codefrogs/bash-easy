#!/bin/bash
# Bash-easy by Codefrogs
# Trims space from text.

# Trims whitespace from the left of a string
function trim_lhs()
{
  local text=$1
  echo "${text#${text%%[! ]*}}"
}

# Trims whitespace on the right of a string.
function trim_rhs()
{
  local text=$1
  echo "${text%${text##*[! ]}}"  # 1[! ] => not space
}

# Trims spaces on either side of a string
# param 1: string to trim
function trim()
{
  local text=$1
  text=$(trim_lhs "$text")
  text=$(trim_rhs "$text")
  echo $text
}
