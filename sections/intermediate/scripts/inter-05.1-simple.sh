#!/bin/bash
# Bash-easy by Codefrogs
# Handling options.
#
#
# inter-05.1-simple.sh
#
function show_version()
{
  echo "Version: 1.3b"
}

function show_info()
{
  echo "Info: Some info about this script."
}

function show_help()
{
  echo "inter-05.1-simple:"
  echo "An example script with options"
  echo "Usage: "
  echo "  script [options] <item1> <item2>"
  echo "  Options:"
  echo "       -v | --version: Shows the current version number"
  echo "       -i | --info: Shows info about this script."
  echo "       -h | --help: Shows this help message."
  echo
}

function process_arg_one ()
{
  echo "Arg one: $1"
}

function process_arg_two ()
{
  echo "Arg two: $1"
}

# Process options
pos_arg=0
while [ $1 ]; do
  case "$1" in
    -v | --version )  show_version; shift; ;;
    -i | --info )     show_info;    shift; ;;
    -h | --help )     show_help;    exit 1 ;;
    -* ) echo "Unknown option: $1"; exit 2; ;;
    *  )  break ;;
  esac
done

# Process positional arguments
arg=1
while [ $1 ]; do
  case "$arg" in
    1 ) process_arg_one $1; shift ;;
    2 ) process_arg_two $1; shift ;;
    * ) echo "Unexpected positional arg: $1"; exit 1
  esac
  ((arg++))
done
echo "Done."
