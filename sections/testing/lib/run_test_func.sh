#!/bin/bash
# Bash-easy by Codefrogs
#
# Runs a test function in a file.
# param1: test filename.
# param2: test function to call.
# returns: the exit code 0 for success, false otherwise.
set -u  # Exit on unknown variables

source $_lib/testing-library.sh
test_file=$1
test_func=$2

source $test_file  # source the test functions
$test_func         # run the function

# Return exit code
code=$?
exit $code
