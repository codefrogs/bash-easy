#!/bin/bash
#
# Tests for the test/library.
# All tests should pass.
#
source ../testing-library.sh

test_str eq "test_ints_same"     0 0
test_str ne "test_ints_not_same" 0 1
test_str eq "test_strs_same"     a a
test_str ne "test_strs_not_same" a b
test_str eq "test_ints_same"     0 1
test_summary
test_clear
test_summary
