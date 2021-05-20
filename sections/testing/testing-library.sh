#!/bin/bash
# Test library functions
# To test difference between variables:
# - test_str <eq/ne> <expected> <actual>
#
set -u  # Exit on unknown variables
test_cnt=0
passed_cnt=0

# Returns the total number of passed tests
function passed_cnt { echo $passed_cnt; }

# Returns the total number of failed tests
function failed_cnt {
  result=$(($test_cnt - $passed_cnt))
  echo $result
}

function test_summary
{
  printf "%s\n" "----------------"
  if ((test_cnt == 0)); then
    echo "No tests were run!"
    return 0
  fi

  pass_percent=$(echo $passed_cnt*100/$test_cnt | bc -l)
  fail_percent=$(echo 100-$pass_percent | bc -l)

  failed=$(failed_cnt)  # get failed count

  printf "Passed: %s (%.1f)\n" $passed_cnt $pass_percent
  printf "Failed: %s (%.1f)\n" $failed     $fail_percent
  printf "Total: %s\n" $test_cnt
}

function test_clear ()
{
  test_cnt=0
  passed_cnt=0
}

#Tests if two strings are the same
function test_str
{
  ((test_cnt+=1))
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
    printf "T%d: %25s : OK\n" $test_cnt "$test_name"
    ((++passed_cnt))
  else
    printf "T%d: %25s : NOK -> Expected: %s Actual: %s\n" $test_cnt "$test_name" "$expected" "$actual"
  fi
}
