# A script for running tests in just this directory.
#
echo "---------"
echo "tests_run"
echo "---------"
echo
d=$(pwd)
_lib=${d%/*}  # Remove the last directory
_lib="${_lib}/lib"
export _lib

source $_lib/testing-library.sh

run_tests
test_summary
