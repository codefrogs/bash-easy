#!/bin/bash
# Library of file-indexing functions
# see: shiftup

# Returns the index number string in a string.
# Indexes can be prefixed with '0'.
# param1: string with a index.
function get_index {
  local path=$1
  index=$(echo $path | tr -d '[:alpha:][:punct:]')
  echo "$index"
}

# param: path - filename
function up_index {
  local path=$1
  # Get index
  # increase
  # rename file
  #echo "up_index($path)"
  echo "hi"
}

# Returns the last index (largest) in the directory
# param: index - start index
function get_last_index {
  local index_start=$1
  local index_max=$index_start
  # Go through each file in the directory
  # Not sure what order they come in, as the index may be on the right.
  for path in $dir/*; do
    if [[ -d $path ]]; then
      continue
    fi
    i=(get_index $path)

    if (( i < index )); then
      continue  # out of range
    fi

    index=get_index $path

    if (( index < index_start )); then
      continue
    fi

    if (( index > index_max )); then
      max_index=indexes
    fi
  done
  echo $
  return 0
}
