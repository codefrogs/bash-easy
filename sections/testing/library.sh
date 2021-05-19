#!/bin/bash
# Test library functions
# Test functions:
# - test_str <eq/ne> <msg> <expected> <actual> : test string equality
# - test_int <eq/ne> <msg> <expected> <actual> : test integer equality
#
set -u  # Exit on unknown variables
test_cnt=0

#Tests if two strings are the same
function test_str
{
  test_cnt+=1
  type=$1
  test_name=$2
  expected=$3
  actual=$4

  if [ $type == 'eq' ]; then
    op='=='
  elif [ $type == 'ne' ]; then
    op='!='
  else
    print "Unknown operator: $type"
    return
  fi

  if [ $expected $op $actual ]; then
    printf "T%d: %s : OK\n" $test_cnt "$test_name"
  else
    printf "T%d: %s : NOK -> Expected: %s Actual: %s\n" $test_cnt "$test_name" "$expected" "$actual"
  fi
}
