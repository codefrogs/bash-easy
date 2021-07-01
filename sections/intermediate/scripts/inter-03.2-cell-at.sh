#!/bin/bash
# Bash-easy by Codefrogs
# Example script that reads in two positional arguments, but
# reports an error on stderr if there are not exactly 2 parameters.

if [[ $# != 2 ]]; then
  printf "B: Usage: inter-03B-cell-at <row> <column>\n\n" >&2
  exit 1
fi

row=$1
shift
col=$1

echo "X: Row: $row, Column $col"
