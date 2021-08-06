#!/bin/bash
# Bash-easy by Codefrogs
# Show how to trim whitespace.
# All we use here are the shell pattern matching (not regex).
# Using x=${x#"${x%%[! ]*}"}
#
set -u
echo "Bash-easy by Codefrogs"
echo

format="%d: %s: '%s' - %s\n"

i=1  # Line counter
line="kaapecatnap abc aaU   "  # Text with three spaces to the left
line="   Uaa cba pantacepaak"  # Text with three spaces to the left

echo "Trimming LHS"
echo "------------"
echo "      1234567890123456789012"
echo "line='$line'"
echo

right_chop="${line%k}"  # Remove first match of 'c'
printf "$format" $i "\${line%k}" "$right_chop" "Removes the first character."
i=$((++i))

# Trying to remove last 'a'. But has no effect as the first character isn't an a
right_chop="${line%a*}"  # Match anything + 'a'
printf "$format" $i "\${line%a*}" "$right_chop" "First matching an 'a'!"
i=$((++i))

# Trying to remove last 'a'. But there is ONLY one 'a'. We need a star.
right_chop="${line%%a}"  # Match as many 'a's to the left
printf "$format" $i "\${line%%a}" "$right_chop" "No match: Needs a's to the right."
i=$((++i))

# Trying to remove last 'a'. But 'a' does not match 'c'.
right_chop="${line%%a*}"  # This is our left chop to 'a'
printf "$format" $i "\${line%%a*}" "$right_chop" "Matches up to the last 'a'!"
i=$((++i))

# Match anything not 'a'
right_chop="${line%%[!a]}"
printf "$format" $i "\${line%%[!a]}" "$right_chop" "Only a match with the k (!=a)"
i=$((++i))

# Match anything not 'a'
right_chop="${line%%[!a]*}"
printf "$format" $i "\${line%%[!a]*}" "$right_chop" "Empty - Matches with last spaces (which are not a)!"
i=$((++i))

# Match anything not a space
right_chop="${line%%[! ]*}"  # [! ] => not space
printf "$format" $i "\${line%%[! ]*}" "$right_chop" "Three spaces!"
i=$((++i))

# echo
# echo "Compare with:"
# # Match anything not 'a'
# echo "      12345678901"
# text="human   aaa"
# echo "text='$text'"
# result="${text##*[!a]}"  # Match anything up to anything not 'a'
# printf "$format" $i "'$text' with ##*[!a]" "$result" "Matches up to anything not 'a'!"
# i=$((++i))

# echo
# echo "Trim spaces right"
# Match anything not a space
right_chop="${line%%[! ]*}"  # [! ] => not space
trim_left="${line#$right_chop}"  # 1[! ] => not space
printf "$format" $i "\${line#${line%%[! ]*}   }" "$trim_left" "Trims (lhs)"
i=$((++i))
