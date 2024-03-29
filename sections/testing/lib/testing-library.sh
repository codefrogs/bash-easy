#!/bin/bash
#
# The Test library
# ----------------
#
# This library allows for unit tests.
# A file with the name 'test_<name>.sh' is a test case.
# Test case files should contain functions made up of assert statements.
#
# To run all the tests in the project, execute the script: test_all.sh
# This will search the project directory structure for directories named 'test'.
# Any file starting with 'test_' will be treated as a test case.
#
# To make assertions use the following:
# - assert_str <eq/ne> <desc> <expected> <actual>
# - assert_int <eq/ne> <desc> <expected> <actual>
#
#  An assert can use either the equality operator 'eq', or 'ne', its negation.
#  desc: the assert description/name, which is displayed when an assert fails.
#  expected: the expected value.
#  actual: the actual value.
#
# Test files are IGNORED if they do not contain functions of the form:
# 'function test_* ()'
#
# Example:
#   h_expected=2
#   h_actual=2
#   assert_int eq "height check" $h_expected $h_actual
#
set -u  # Exit on unknown variables
ERR_BAD_PARAMETERS=1
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

  printf "Passed: %s (%.1f%%)\n" $passed_cnt $pass_percent
  printf "Failed: %s (%.1f%%)\n" $failed     $fail_percent
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

# Shows the assert failure message and expected value.
# param 1: error message
# param 2: the expected value
# param 3: actual value
function show_assert_msg()
{
  local msg=$1
  local exp=$2
  local act=$3

  printf "%9s: %s\n" "Assert" "$1"
  printf "%9s: %s\n" "Expected" "'$exp'"
  printf "%9s: %s\n" "Actual" "'$act'"
}

#Tests if two strings are the same
# param 1: comparison type of 'eq' or 'ne'
# param 2: assert message description.
# param 3: expected value for assertion
# param 4: actual value for assertion
# Returns 0 if succeeds, 1 otherwise.
function assert_str()
{
  if (( $#!=4 )); then
    if (( $# < 4 )); then
      printf "assert_str: Missing %s parameter(s), found only %s\n" $((4-$#)) $# >&2
    else
      printf "assert_str: Too many parameters, found %s, expected only 4\n" $# >&2
    fi
    exit $ERR_BAD_PARAMETERS
  fi
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
    printf "Unknown operator: $type"
    return
  fi
  # TODO: Add NOT
  if ! [ "$expected" $op "$actual" ]; then
    #printf "T%d: %25s : OK\n" $test_cnt "$test_name"
    #((++assert_ok))
    show_assert_msg "$assert_msg" "$expected" "$actual"
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
    printf "Unknown operator: $type"
    return
  fi

  if !(( expected $op actual )); then
  #   printf "T%d: %25s : OK\n" $test_cnt "$test_name"
  #   ((++assert_ok))
  # else
    show_assert_msg "$assert_msg" "$expected" "$actual"
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
  ($_lib/run_test_func.sh $filename $test_case)
  local result=$?

  return $result
}

# Runs all the test cases in directory, and sub directories.
# param1: the directory to search for tests.
#         If this is not set, the current directory is assumed.
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

  # Check for default path.
  path=""
  if [[ $# = 0 ]]; then  # If we have arguments
    path="."  # Assume currently directory if a path is not given
  else
    path=$1
  fi

  # Verify starting path is a directory.
  if ! [[ -d $path ]]; then
    printf "Not a directory: %s" "$path"
    return 1
  fi

  # Find all the test scripts
  test_files=$(find "$path" -name 'test_*.sh')
  #echo "Files: $test_files"

  for test_file in $test_files; do
    # Get function list.
    # We use grep
    functions=$(grep -E '^\s*function test_\w*\s*\(\s*\)' "$test_file")

    # Check for case a test file has no functions!
    if [[ ${#functions} = 0 ]]; then
      #filename=$(get_filename $test_file)
      printf "IGNORED (no funcs): %s\n" "$test_file"
      continue
    fi

    functions=$(echo "$functions" | tr '\n' ',') # convert into a csv
    IFSOLD=$IFS # store old IFS
    IFS=","
    filename=$(get_filename $test_file)
    printf "Test File: %s\n" "$filename"
    for test_func in $functions; do
      func_name=${test_func##function }  # remove function keyword
      func_name=${func_name## }  # remove left spaces
      func_name=${func_name%%(*} # remove brackets
      func_name=${func_name%% }  # remove right spaces

      test_info=$(run_test "$test_file" "$func_name")
      test_result=$?
      ((++test_cnt))
      if ((test_result==0)); then
        ((++passed_cnt))
        printf "Test(%s): %s\n" "PASS" "$func_name"
        #echo "PASS"
      else
        printf "Test(%s): %s\n" "FAIL" "$func_name"
        echo "$test_info"
        #echo "FAIL"
      fi
    done
    echo
  done
}
