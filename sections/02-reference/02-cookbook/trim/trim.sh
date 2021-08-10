#!/bin/bash
# Bash-easy by Codefrogs
# Trims space from text.

# Trims whitespace from the left of a string
function trim_lhs()
{
  delimiter=" "
  if [[ $# = 3 ]] && [[ "$1" = "-d" ]] && (( ${#2} == 1 )); then  # Should be a quoted string
      delimiter=$2
      shift 2
  fi

  local text=$1
  echo "${text#${text%%[!$delimiter]*}}"
}

# Trims whitespace on the right of a string.
function trim_rhs()
{
  delimiter=" "
  if [[ $# = 3 ]] && [[ "$1" = "-d" ]] && (( ${#2} == 1 )); then  # Should be a quoted string
      delimiter=$2
      shift 2
  fi

  local text=$1
  echo "${text%${text##*[!$delimiter]}}"  # 1[! ] => not space
}

# Trims spaces on either side of a string
# param 1: string to trim
function trim()
{
  delimiter=" "
  if [[ $# = 3 ]] && [[ "$1" = "-d" ]] && (( ${#2} == 1 )) ; then
    delimiter="-d $2"
    shift 2
  fi

  local text=$1
  text=$(trim_lhs $delimiter "$text")
  text=$(trim_rhs $delimiter "$text")
  echo $text
}
