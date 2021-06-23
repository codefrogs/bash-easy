#!/bin/bash
# Test library functions
# To test difference between variables:
# - assert_str <eq/ne> <expected> <actual>
# - assert_int <eq/ne> <expected> <actual>
#
set -u  # Exit on unknown variables
test_cnt=0  # The number to tests
passed_cnt=0

#assert_cnt=0 # Number of assertions
#assert_ok=0  # Number of assertions that were true (OK)
_testing_library=true  # Means testing library has been 'sourced'.

header="----------------"

# Returns the total number of passed tests
function passed_cnt { echo $passed_cnt; }

# Returns the total number of failed tests
function failed_cnt {
  result=$(($test_cnt - $passed_cnt))
  echo $result
}

# Returns the filename from a path.
# param 1: path containing a filename.
function get_filename()
{
  filename=$1
  echo ${filename##*/}
}

function test_summary()
{
  printf "%s\n" $header
  printf "Test summary\n"
  printf "%s\n" $header
  
  if ((test_cnt == 0)); then
    echo "No tests were run!"
    printf "%s\n" $header
    return 0
  fi

  pass_percent=$(echo $passed_cnt*100/$test_cnt | bc -l)
  fail_percent=$(echo 100-$pass_percent | bc -l)

  failed=$(failed_cnt)  # get failed count

  printf "Passed: %s (%.1f)\n" $passed_cnt $pass_percent
  printf "Failed: %s (%.1f)\n" $failed     $fail_percent
  printf "Total: %s\n" $test_cnt
  printf "%s\n" $header
}

# Clears the registry of tests and passes.
# This function may be removed.
function test_clear ()
{
  test_cnt=0
  passed_cnt=0
}

#Tests if two strings are the same
# param 1: comparison type of 'eq' or 'ne'
# param 2: assert message description.
# param 3: expected value for assertion
# param 4: actual value for assertion
# Returns 0 if succeeds, 1 otherwise.
function assert_str()
{
  #((assert_cnt+=1))
  type=$1
  assert_msg=$2
  expected=$3
  actual=$4
  result=0  # The exit code result

  if [ $type == 'eq' ]; then
    op='=='
  elif [ $type == 'ne' ]; then
    op='!='
  else
    print "Unknown operator: $type"
    return
  fi
  # TODO: Add NOT
  if ! [ "$expected" $op "$actual" ]; then
    #printf "T%d: %25s : OK\n" $test_cnt "$test_name"
    #((++assert_ok))

    printf "Assert(%s) FAILED ->\n\tExpected: %s\n\t Actual: %s\n" "$assert_msg" "$expected" "$actual"
    result=1
  fi
  return $result
}

#Tests if two integers are the same
# param 1: comparison type of 'eq' or 'ne'
# param 2: assert message description.
# param 3: expected value for assertion
# param 4: actual value for assertion
# Returns 0 if succeeds, 1 otherwise.
function assert_int()
{
  #((assert_cnt+=1))
  type=$1
  assert_msg=$2
  declare -i expected=$3  # declare as integer
  declare -i actual=$4    # declare as integer
  result=0

  if [ $type == 'eq' ]; then
    op='=='
  elif [ $type == 'ne' ]; then
    op='!='
  else
    print "Unknown operator: $type"
    return
  fi

  if !(( expected $op actual )); then
  #   printf "T%d: %25s : OK\n" $test_cnt "$test_name"
  #   ((++assert_ok))
  # else
    printf "Assert FAILED -> Expected: !%s Actual: %s\n" "$assert_msg" "$expected" "$actual"
    #caller  # Show stack trace
    result=1
  fi
  return $result
}

# Runs just one function in one test file.
# param 1: script filename
# param 2: script function
# Outputs the result 'PASS/FAIL'
# Returns 0 for success, otherwise failure.
function run_test()
{
  #echo "RUN_TEST filename: $1"
  filename=$1
  test_case=$2
  ($_root/lib/run_test_func.sh $filename $test_case)
  local result=$?

  return $result
}

function run_tests()
{
  # A. For each file starting with 'test_'
  #    1. source the file.
  #    2. call the functions:
  #      a. for each function:
  #         call the function checking the result.
  #      b. update the test results
  #  B. Show test test_summary
  #
  test_suites=$(find . -name 'test_*.sh')

  for suite_file in $test_suites; do
    # Get function list.
    # Do we use sed/awk/grep
    functions=$(grep -E '^\s*function test_\w*\s*\(\s*\)' "$suite_file")
    functions=$(echo "$functions" | tr '\n' ',') # convert into a csv
    IFSOLD=$IFS # store old IFS
    IFS=","
    filename=$(get_filename $suite_file)
    printf "Test File: %s\n" "$filename"
    for test_func in $functions; do
      func_name=${test_func##function }  # remove function keyword
      func_name=${func_name## }  # remove left spaces
      func_name=${func_name%%(*} # remove brackets
      func_name=${func_name%% }  # remove right spaces
      printf "Test: \t%s: " "$func_name"
      run_test "$suite_file" "$func_name"
      test_result=$?
      ((++test_cnt))
      if ((test_result==0)); then
        ((++passed_cnt))
        echo "PASS"
      else
        echo "FAIL"
      fi
        #printf "\t%s: $test_result\n" $func_name
    done
    echo
  done
}
