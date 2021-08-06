source "$_root/02-reference/02-cookbook/trim/trim.sh"

function test_trim_left_on_string_without_spaces ()
{
  text="abc"
  expected="$text"
  actual=$(trim_lhs "$text" )
  assert_str eq "trim_lhs_without_space_should_not_change" "$expected" "$actual"
}

function test_trim_left_on_string_with_spaces_on_left ()
{
  text="   abc"
  expected="abc"
  actual=$(trim_lhs "$text" )
  assert_str eq "trim_lhs_should_remove_spaces_on_left" "$expected" "$actual"
}

function test_trim_left_on_string_with_spaces_on_right ()
{
  text="abc   "
  expected=$text
  actual=$(trim_lhs "$text")
  assert_str eq "trim_lhs_should_not_alter_text" "$expected" "$actual"
}

function test_trim_left_on_string_with_various_spaces ()
{
  text="  The cat sat on the mat...   "
  expected="The cat sat on the mat...   "
  actual=$(trim_lhs "$text")
  assert_str eq "should_trim_lhs_of_spaces" "$expected" "$actual"
}

function test_trim_left_on_empty_spaces_only ()
{
  text="     "
  expected=""
  actual=$(trim_lhs "$text")
  assert_str eq "triming_spaces_should_be_empty" "$expected" "$actual"
}
