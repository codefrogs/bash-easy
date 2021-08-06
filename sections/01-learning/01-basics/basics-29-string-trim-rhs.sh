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

echo "Trimming RHS"
echo "------------"
echo "      1234567890123456789012"
echo "line='$line'"
echo

left_chop="${line#k}"  # Remove first match of 'c'
printf "$format" $i "\${line#k}" "$left_chop" "Removes the first character."
i=$((++i))

# Trying to remove first 'a'. But has no effect as the first character isn't an a
left_chop="${line#*a}"  # Match anything + 'a'
printf "$format" $i "\${line#*a}" "$left_chop" "First matching an 'a'!"
i=$((++i))

# Trying to remove first 'a'. But there is ONLY one 'a'. We need a star.
left_chop="${line##a}"  # Match as many 'a's to the left
printf "$format" $i "\${line##a}" "$left_chop" "No match: Needs a's to the left."
i=$((++i))

# Trying to remove first 'a'. But 'a' does not match 'c'.
left_chop="${line##*a}"  # This is our left chop to 'a'
printf "$format" $i "\${line##*a}" "$left_chop" "Matches up to the last 'a'!"
i=$((++i))

# Match anything not 'a'
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
left_chop="${line##*[! ]}"  # [! ] => not space
trim_right="${line%$left_chop}"  # 1[! ] => not space
printf "$format" $i "\${line%${line##*[! ]}   }" "$trim_right" "Trims (rhs)"
i=$((++i))
