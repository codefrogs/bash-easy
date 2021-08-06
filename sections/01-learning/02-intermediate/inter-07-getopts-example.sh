#!/bin/bash
# Bash-easy by Codefrogs

# OPTERR=0 # don't let getopts issue any error messages
# options=":hv"  # the initial ':' means give minimal error message.
options="hv"  # defines options

MAJOR=1  # version: major value
MINOR=0  # version: minor value
PATCH=0  # version: patch value

ERR_MISSING_ARGS=1
ERR_MISSING_FILE=2
ERR_UNKNOWN_OPTION=3
ERR_INTERNAL=6

# Shows script version
function show_version()
{
  printf "%s, version %s.%s.%s\n" $(basename $0) $MAJOR $MINOR $PATCH
}

# Shows one-liner help
function show_usage()
{
  printf "Usage: %s [-h] [-i] [-v] <file> [<file>]\n" "${0##*/}"
}

# Shows help for this script
function show_help()
{
  show_usage
  printf "Options:\n \
  h - shows this help.\n \
  v - shows version.\n"
}

#Shows information about the file type, and size.
function show_info
{
  if (($#!=1)); then
    printf "show_info: missing args" >&2
    exit $ERR_INTERNAL
  fi

  file=$1
  if ! [[ -e $file ]]; then
    printf "File does not exist: $file\n"
    exit $ERR_MISSING_FILE
  fi
  size=$(ls -lh $file | cut -f5 -d ' ')
  printf "File: %s (%s bytes)\n" $file $size
  printf "Desc:%s\n" "$(file $file | cut -f2 -d ':' | cut -f1 -d ',' )"
}

if (($#==0)); then
 show_usage
 exit $ERR_MISSING_ARGS
fi

while getopts "$options" opt  # 'opt' is the option value
do
  case $opt in
    h) show_help; exit 0 ;;
    v) show_version; exit 0;;
  '?') show_help ; exit $ERR_UNKNOWN_OPTION ;;
  esac
done

shift $(( $OPTIND -1 ))  # Shift parameters down into $1, $2, ... etc

# Go through each file, and show file data.
for file in $*; do
  if [[ -f $file ]]; then
    show_info $file
  fi
done
