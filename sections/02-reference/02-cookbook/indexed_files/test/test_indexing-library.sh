#!/bin/bash

source "$_root/02-reference/02-cookbook/indexed_files/lib/indexing-library.sh"

function test_string_index_at_start ()
{
  filename="02-attractor.txt"
  index=$(get_index "$filename")

  assert_str eq "index_at_start" "02" $index
}

function test_string_index_middle ()
{
  filename="subject-08-matter.txt"
  index=$(get_index "$filename")

  assert_str eq "index_at_middle" "08" $index
}

function test_string_index_near_end ()
{
  filename="subject-matter-11.txt"
  index=$(get_index "$filename")

  assert_str eq "index_near_end" "11" $index
}

function test_string_index_end ()
{
  filename="subject-matter_190"
  index=$(get_index "$filename")

  assert_str eq "index_at_end" "190" $index
}

function test_up_index ()
{
  filename="subject-33-data.txt"
  expected="subject-34-data.txt"
  actual=$(up_index $filename)

  assert_str eq "up_index" "$expected" "$actual"
}
