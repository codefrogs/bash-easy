#!/bin/bash
# Bash-easy by Codefrogs
#
# Runs a test function in a file.
# param1: test filename.
# param2: test function to call.
# returns: the exit code 0 for success, false otherwise.
set -u  # Exit on unknown variables

source $_lib/testing-library.sh
test_file=$1  # The test function file.
test_func=$2  # The test-case function to run

# A test function should have one or more asserts.
source $test_file  # read in the test functions
$test_func         # run the function

# Return exit code
code=$?
exit $code
