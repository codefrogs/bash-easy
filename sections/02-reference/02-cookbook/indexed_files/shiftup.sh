#!/bin/bash
# Basy-Easy by Codefrogs
#
# Shifts all the indexes of files in a directory.
# Files must contain a single number.
#
# Consider using 'insert_at.sh <filename>' to add a new file.
#
# Usage:
#   shiftup.sh -d <directory='.'> -i <index>
#
# Shift all the indexes up from 'index'
# 1. Find the file with the index
# 2. Rename all files from the 'index' to the last files
#    by adding one to the index.
#
# If no arguments given, show help
#
source lib/indexing-library.sh

function show_help {
  printf "Shifts the indexes in file names in a directory.\n"
  printf "Gaps in indexes are preserved.\n"
  printf "Usage: \n"
  printf "       shift -i <index> -d <directory=.>\n"
  printf "\n"
  printf "       -i <index>    : start point for increasing indexes.\n"
  printf "       -d <directory>: directory to work on.\n"
  printf "       -h            : show this help.\n"
  printf "\n"
}

# Moves the given file with an index that's increased by one.
function move_up ()
{
  filename=$1
  if ![[ -e $filename ]]; then
    continue  # File doesn't exist! But will proceed with shifting rest up.
  fi
  new_filename=$(shiftup $filename)

  if [[ -e $new_filename ]]; then
    print "Unexpected file found: $new_filename" >&2
    print "Can't re-index: $filename" >&2
    return 1
  fi
  # Move file
  echo "Reindexing: $filename->$new_filename"

}


while [ $1 ]; do
case "$1" in
  -d )  shift; dir=$1 ;;
  -i )  shift; start_index=$1 ;;
  -h | --help )  show_help; exit 1 ;;
  *  )  echo "Unknown option: $1"; exit 1 ;;
esac
shift
done

if [[ -z $dir ]]; then
  dir="."
fi

# Check directory and start index is set.
if [[ -z $dir || -z $start_index ]]; then
  echo "Missing option(s)"
  show_help
  exit 1
fi

# Check the directory is a real directory.
if [[ ! -d $dir ]]; then
  echo "Not a directory: $dir"
  exit 1
fi

last_index=$(get_last_index $start_index)
if [[ -z $last_index ]]; then
  echo "Error: No index found"
  exit 1
fi
echo "Last index: $last_index"

# From last index to start index we increase the filename index.
for ((index=$last_index; index>=$start_index; --index))
{
  filenames=$(files_at $index)
  if (( ${#filenames[*]} == 0 )); then
    continue  # No files with that index
  fi
  for file in "$filename[@]"; then
    move_up $file
  done
}
