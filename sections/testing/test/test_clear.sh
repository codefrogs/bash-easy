#!/bin/bash
#
# Tests the 'clear function in test/library.
#
#source ../testing-library.sh

# Verify clear resets test counting.
function test_test_clear()
{

  assert_str eq "dummy assertion"  0 0
  summary=$(test_summary)
  test_clear
  test_summary_result=$(test_summary)
  text_expected="No tests were run!"
  header="----------------"
  test_summary_result="${test_summary_result#*$header[[:space:]]}"  # Remove header
  test_summary_result="${test_summary_result#*$header[[:space:]]}"  # Remove title & header  

  expected=$(echo -e "$text_expected\n----------------\n")
  assert_str eq "test_clear_shows 'no tests' summary" "$expected" "$test_summary_result"
}

# expected=$(echo -e "----------------\nNo tests were run!\n----------------\n")
