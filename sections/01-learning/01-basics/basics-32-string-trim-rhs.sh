#!/bin/bash
# Bash-easy by Codefrogs
# Show how to trim RHS whitespace.
# All we use here is shell pattern matching (not regex).
#
# To trim on the RHS, we use: rhs_trimmed=${x#"${x%%[! ]*}"}
#
# This jumble of characters looks complicated, but we go through it step by step.
#
set -u
echo "Bash-easy by Codefrogs"
echo

format="%d: %s: '%s' - %s\n"  # Ignore this, just for displaying results.

i=1  # Line counter
line="kaapecatnap abc aaU   "  # Text with three spaces to the right

echo "Trimming RHS"
echo "------------"
echo "      1234567890123456789012" # Columns
echo "line='$line'"
echo

# Notice we use the format:
# ${variable#<pattern>}
# Where 'pattern' is made of of a set of characters.
# Remember that the star character '*' matches zero or more characters.

left_chop="${line#k}"  # Remove first match of 'k'
printf "$format" $i "\${line#k}" "$left_chop" "Removes the first character."
i=$((++i))

# The pattern '*a'should be read as: match something or nothing (*), then a.
# This pattern matches 'ka'.
#
left_chop="${line#*a}"  # Reads, match any character + 'a'
printf "$format" $i "\${line#*a}" "$left_chop" "First matching an 'a'!"
i=$((++i))

# Trying to remove first 'a'. But 'k' != ''a'.
left_chop="${line##a}"  # Reads, match as many 'a's to the left
printf "$format" $i "\${line##a}" "$left_chop" "No match: 'k' != 'a'."
i=$((++i))

# The pattern '##*a' reads match as any characters to the left, plus one 'a'.
left_chop="${line##*a}"  # This is our left chop to 'a'
printf "$format" $i "\${line##*a}" "$left_chop" "Matches up to the last 'a'!"
i=$((++i))

# The pattern '##[!a]' reads, match anything not 'a'.
left_chop="${line##[!a]}"
printf "$format" $i "\${line##[!a]}" "$left_chop" "Only a match with the k (!=a)"
i=$((++i))

# Match anything not 'a'
left_chop="${line##*[!a]}"
printf "$format" $i "\${line##*[!a]}" "$left_chop" "Empty - Matches with last spaces (which are not a)!"
i=$((++i))

# Match anything not a space
left_chop="${line##*[! ]}"  # [! ] => not space
printf "$format" $i "\${line##*[! ]}" "$left_chop" "Three spaces!"
i=$((++i))

# Trim spaces right
# Match anything not a space
# Just a repeat of the last example.
three_spaces="${line##*[! ]}"  # reads, match anything not a space.

# Now we use the '%' operator, as we will chop off the spaces from the right.
trim_right="${line%$three_spaces}"  # Reads remove from the left the text

# We don't have to use the variables above, and can just replace
# insert the value of 'three_spaces' instead.
# i.e. "${line%"${line##*[! ]}"}"
#
printf "$format" $i "\${line%\"\${line##*[! ]}\"}" "$trim_right" "Trims (rhs)"
i=$((++i))

# Notice we have quotes around the text pattern.
trimmed=${line%"${line##*[! ]}"}
echo "$i: Final check: '$trimmed'"
