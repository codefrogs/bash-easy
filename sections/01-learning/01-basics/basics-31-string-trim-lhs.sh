#!/bin/bash
# Bash-easy by Codefrogs
# Show how to trim LHS (Left Hand Side) whitespace.
# All we use here is shell pattern matching (not regex).

# To trim on the LHS, we use: x=${x#"${x%%[! ]*}"}
#
# This jumble of characters looks complicated, but we go through it step by step.
#
# The first step, is to remove the characters to the right of the whitepace.
#
# This may seem like we got things the wrong way around but,
# to do the LHS trim, we need to know what's on the right hand side (RHS) first.
#
# This is a trivial example, but explains the principle.
# For example, suppose we have the string:
# ' car'  (with one white space to the left)
#
# To trim the white space, we create a copy of just the white space.
# We do that by removing everything that isn't whitespace.
# In this case it's 'car'.
#
# That leaves us with just ' '. The whitespace we want to remove.
#
# Let's say,
# white=' '
# Now we remove 'white' from our original string ' car'.
#
# Then finally we have the left trimmed string: 'car'.
#
# The examples below should help make it clearer!

set -u
echo "Bash-easy by Codefrogs"
echo

format="%d: %s: '%s' - %s\n"

i=1  # Line counter
line="   Uaa cba pantacepaak"  # Text with three spaces to the left

echo "Trimming LHS"
echo "------------"
echo "      1234567890123456789012" # Columns
echo "line='$line'"
echo

right_chop="${line%k}"  # Remove first match of 'k'
printf "$format" $i "\${line%k}" "$right_chop" "Removes the first character."
i=$((++i))

# Trying to remove last 'a'. But has no effect as the first character isn't an a
right_chop="${line%a*}"  # Reads match any character + 'a'
printf "$format" $i "\${line%a*}" "$right_chop" "First matching an 'a'!"
i=$((++i))

# Trying to remove last 'a'. But there is ONLY one 'a'. We need a star.
right_chop="${line%%a}"  # Match as many 'a's to the left
printf "$format" $i "\${line%%a}" "$right_chop" "No match: 'k' != 'a'."
i=$((++i))

# Trying to remove last 'a'. But 'a' does not match 'c'.
right_chop="${line%%a*}"  # This is our left chop to 'a'
printf "$format" $i "\${line%%a*}" "$right_chop" "Matches up to the last 'a'!"
i=$((++i))

# Match anything not 'a'
right_chop="${line%%[!a]}" # Reads, match anything not 'a' from the right.
printf "$format" $i "\${line%%[!a]}" "$right_chop" "Only a match with the k (!=a)"
i=$((++i))

# Match anything not 'a'
right_chop="${line%%[!a]*}" # [!a]* Reads, from the right match any characters + not an 'a'.
# However in this case the '*' eats up all the characters. And the last character is also not an 'a'!
printf "$format" $i "\${line%%[!a]*}" "$right_chop" "Empty - Matches with last spaces (which are not a)!"
i=$((++i))

# Match anything not a space
# In this example we find the spaces we want to remove.
right_chop="${line%%[! ]*}"  # [! ] Reads, from the right match any characters + non-spaces
printf "$format" $i "\${line%%[! ]*}" "$right_chop" "Three spaces!"
i=$((++i))

# Trim spaces from the left.
# Match anything not a space
# Just a repeat of the last example.
three_spaces="${line%%[! ]*}"

# Now we use the '#' operator, as we will chop off the spaces from the left.
trim_left="${line#$three_spaces}"

# We don't have to use the variables above, and can just replace
# insert the value of 'three_spaces' instead.
# i.e. "${line#"${line%%[! ]*}"}"
#
printf "$format" $i "\${line#\"\${line%%[! ]*}\"}" "$trim_left" "Trims (lhs)"
i=$((++i))
