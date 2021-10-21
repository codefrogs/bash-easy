#!/bin/bash
# Library of file-indexing functions
# see: shiftup

# Returns the index number string in a string.
# Indexes can be prefixed with '0'.
# param1: string with a index.
function get_index {
  local path=$1
  path=$(basename $path)
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
  echo "todo: implement"
}

# Returns the last index (largest) in the directory
# param: index - start index
function get_last_index {
  local index_max=$1
  # Go through each file in the directory
  # Not sure what order they come in, as the index may be on the right.
  for path in $dir/*; do
    if [[ -d $path ]]; then
      continue  # is a directory, so skip
    fi
    index=$(get_index $path)

    if (( index > index_max )); then
      index_max=$index
    fi

  done
  echo $index_max
  return 0
}

# Returns the a list of files with given index
# param1: file index to find
function files_at ()
{
  echo "TODO: implement"
}
