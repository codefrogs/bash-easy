#!/bin/bash
#
# Tests for the test/library.#!/bin/sh
# All tests should pass.
#
source ../library.sh

test_str eq "test_same"         0 0
test_str ne "test_int_not_same" 0 1
test_str eq "test_str_same"     a a
test_str ne "test_str_not_same" a b
