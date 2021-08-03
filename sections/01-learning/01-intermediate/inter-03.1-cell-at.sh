#!/bin/bash
# Bash-easy by Codefrogs
# Example script that reads in two positional arguments.
# see: help shift

row=$1
shift
col=$1

echo "A: Row: $row, Column: $col"
