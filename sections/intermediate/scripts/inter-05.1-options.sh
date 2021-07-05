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
  echo "Usage: script [options] <item1> <item2>"
  echo
  echo "  -h, --help    print this help message and exit"
  echo "  -i, --info    infomation about this script"
  echo "  -v, --version print version"
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

function read_user ()
{
  echo "User: $1"
}

# Process options: notice they are in alphabetical order.
# It's easier to maintain that way.
while [ $1 ]; do
  case "$1" in
    -h | --help )     show_help;    exit 1 ;;
    -i | --info )     show_info;    shift; ;;
    -u | --user )     shift; read_user $1; shift; ;;
    -v | --version )  show_version; shift; ;;
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
