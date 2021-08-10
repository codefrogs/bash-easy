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
  assert_str eq "should_be_an_empty_string" "$expected" "$actual"
}

# ---- test_trim_left with delimiter
function test_trim_left_remove_dashes_on_left ()
{
  text="---The cat sat on the mat...---"
  expected="The cat sat on the mat...---"
  actual=$(trim_lhs -d - "$text")
  assert_str eq "should have removed '-' from left" "$expected" "$actual"
}

function test_trim_left_remove_dashes_on_left_for_dashed_text ()
{
  text="---The-cat-sat-on-the-mat...---"
  expected="The-cat-sat-on-the-mat...---"
  actual=$(trim_lhs -d - "$text")
  assert_str eq "should have removed '-' from left" "$expected" "$actual"
}


# -------------------------test_trim_right---------------------------------------

function test_trim_right_on_string_without_spaces ()
{
  text="abc"
  expected="$text"
  actual=$(trim_rhs "$text" )
  assert_str eq "should_leave_string_unchanged" "$expected" "$actual"
}

function test_trim_right_on_string_with_spaces_on_left ()
{
  text="   abc"
  expected="   abc"
  actual=$(trim_rhs "$text" )
  assert_str eq "trim_rhs should leave string unchanged" "$expected" "$actual"
}

function test_trim_right_on_string_with_spaces_on_right ()
{
  text="abc   "
  expected="abc"
  actual=$(trim_rhs "$text")
  assert_str eq "Should have removed spaces to the right" "$expected" "$actual"
}

function test_trim_right_on_string_with_various_spaces ()
{
  text="  The cat sat on the mat...   "
  expected="  The cat sat on the mat..."
  actual=$(trim_rhs "$text")
  assert_str eq "trim_rhs should remove spaces on the rhs" "$expected" "$actual"
}

function test_trim_right_on_empty_spaces_only ()
{
  text="     "
  expected=""
  actual=$(trim_rhs "$text")
  assert_str eq "should_be_an_empty_string" "$expected" "$actual"
}

# ---- test_trim_left with delimiter
function test_trim_right_remove_dashes_on_right ()
{
  text="---The cat sat on the mat...---"
  expected="---The cat sat on the mat..."
  actual=$(trim_rhs -d - "$text")
  assert_str eq "should have removed '-' from right" "$expected" "$actual"
}

function test_trim_right_remove_dashes_on_right_for_dashed_text ()
{
  text="---The-cat-sat-on-the-mat...---"
  expected="---The-cat-sat-on-the-mat..."
  actual=$(trim_rhs -d - "$text")
  assert_str eq "should have removed '-' from right" "$expected" "$actual"
}

# -------- test trim ------------

function test_trim_on_string_with_spaces()
{
  text="  The cat sat on the mat...   "
  expected="The cat sat on the mat..."
  actual=$(trim "$text")
  assert_str eq "trim should remove spaces on both left and right" "$expected" "$actual"
}

function test_trim_on_empty_string()
{
  text=""
  expected=""
  actual=$(trim "$text")
  assert_str eq "trim on emtpy string should be still empty" "$expected" "$actual"
}

function test_trim_on_string_with_spaces()
{
  text="   "
  expected=""
  actual=$(trim "$text")
  assert_str eq "trim on spaces should be an empty string" "$expected" "$actual"
}

# TODO: Create tests using delimiter
