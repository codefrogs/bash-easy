#!/bin/bash
# Bash-easy by Codefrogs
#
# Runs all tests.
# Goes through all sections running all the tests.
#
# TODO: allow option to give a path to the script.

echo "---------"
echo "run_tests"
echo "---------"
echo
curr_dir=$(pwd)  # current directory
_root=${curr_dir%/*}  # // sections directory
export _root

_lib=$curr_dir/lib
export _lib

source $_lib/testing-library.sh

run_tests "../"
test_summary
