#!/bin/bash
# Bash-easy by Codefrogs
# Trims space from text.

# TODO: Create delimiter function

# Trims whitespace from the left of a string
function trim_lhs()
{
  delimiter=" "
  if [[ "$1" = "-d" ]]; then
    if (( ${#2} == 1 )); then  # Should be a quoted string
      delimiter=$2
      shift 2
    fi
  fi

  local text=$1
  echo "${text#${text%%[!$delimiter]*}}"
}

# Trims whitespace on the right of a string.
function trim_rhs()
{
  delimiter=" "
  if [[ "$1" = "-d" ]]; then
    if (( ${#2} == 1 )); then  # Should be a quoted string
      delimiter=$2
      shift 2
    fi
  fi

  local text=$1
  echo "${text%${text##*[!$delimiter]}}"  # 1[! ] => not space
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
