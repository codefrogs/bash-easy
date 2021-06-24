# A script for running tests in just this directory.
#
echo "---------"
echo "tests_run"
echo "---------"
echo
_root=$(pwd)
_root=${_root%/*}  # Remove the last directory
export _root

#echo "Root: $_root"
source ../lib/testing-library.sh

run_tests
test_summary
