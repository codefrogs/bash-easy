path=$_root/02-reference/02-cookbook/find

function test_tfind_search_a_word ()
{
  actual=()
  expected=(01-jerald.txt 02-alice.txt)

  files=$($path/tfind "$path/test/data" -n '*.txt' -t 'this')

  for f in $files ; do
    name=$(basename $f)
    items+=($name)
  done
  actual=$(printf "%s\n" ${items[@]} | sort | tr '\n' ' ')
  assert_str eq "Missing files from find's results" "${expected[*]}" "${actual% }"
}

function test_tfind_search_for_text_common_to_files ()
{
  actual=()
  expected=(01-jerald.txt 01-two-cities.txt 02-alice.txt 02-rand.txt 03-sherlock.txt )

  files=$($path/tfind "$path/test/data" -n '*.txt' -t 'is')

  for f in $files ; do
    name=$(basename $f)
    items+=($name)
  done
  actual=$(printf "%s\n" ${items[@]} | sort | tr '\n' ' ')
  assert_str eq "Missing files from find's results" "${expected[*]}" "${actual% }"
}

function test_tfind_search_non_existant_word ()
{
  actual=()
  expected=""

  files=$($path/tfind "$path/test/data" -n '*.txt' -t 'random-word')

  for f in $files ; do
    name=$(basename $f)
    items+=($name)
  done
  actual=$(printf "%s\n" ${items[@]} | sort | tr '\n' ' ')
  assert_str eq "No file should contain the text 'random-word'" "$expected" "${actual% }"
}

function test_tfind_search_non_existant_files ()
{
  actual=()
  expected=""

  files=$($path/tfind "$path/test/data" -n '*.not' -t 'a')

  for f in $files ; do
    name=$(basename $f)
    items+=($name)
  done
  actual=$(printf "%s\n" ${items[@]} | sort | tr '\n' ' ')
  assert_str eq "There should not be any files ending in *.not" "$expected" "${actual% }"
}

function test_tfind_with_no_parameters ()
{
  expected="Usage"
  actual=$($path/tfind -h)
  junk_r=${actual##*Usage}  # Get everything right of 'Usage'
  actual=${actual%$junk_r}  # Remove junk_r
  junk_l=${actual%%Usage*}  # Get everyting left of 'Usage'
  actual=${actual#$junk_l}  # Remove junk_l

  assert_str eq "Should have a 'usage' message " "$expected" "$actual"
}

function test_tfind_rejects_use_of_option_name ()
{
  expected="Usage"

  actual=$($path/tfind "$path/test/data" -name '*.txt' -t 'room')

  junk_r=${actual##*Usage}  # Get everything right of 'Usage'
  actual=${actual%$junk_r}  # Remove junk_r
  junk_l=${actual%%Usage*}  # Get everyting left of 'Usage'
  actual=${actual#$junk_l}  # Remove junk_l

  assert_str eq "Should have a 'usage' message " "$expected" "$actual"

}
