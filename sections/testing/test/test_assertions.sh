#!/bin/bash
# This is a test suite.
# Each function is a test case.
#
#
# Tests for the test/library.
# All tests should pass.
#

# Verify string assertions
function test_str_assertions ()
{
  assert_str eq "test_str_ints_same1"  0 0
  assert_str ne "test_str_ints_nsame2" 0 1
  assert_str eq "test_str_same3"       a a
  assert_str ne "test_str_nsame4"      a b
}

# Verify integer assertions
function test_int_assertions ()
{
 assert_int eq "test_ints_same1"     0 0
 assert_int ne "test_ints_nsame2"    0 1
 assert_int eq "test_ints_same3"     104 104
 assert_int eq "test_ints_same4"     02 2
 assert_int ne "test_ints_nsame5"    76 87
}
