#!/bin/bash
# Library of file-indexing functions
# see: shiftup

# param: path - filename
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
#param: index - start index
function get_last_index {
  local index=$1
  # for f in file; do
  #
  # done
  return 5
}
