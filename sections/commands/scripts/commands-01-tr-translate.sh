#!/bin/bash

echo "Using the tr command to translate characters."

# Translate
# Translate one set of characters to another set.
# tr <setA> <setB>
# This maps characters in set A into those in set B.

# Translate a into X
value="abcdefg12345"
echo "0: $value" | tr a X

# Same, but setting a variable
result=$(echo $value | tr a X)
echo "1:" $result

# Translating multiple characters
multiple="aaaa"
result=$(echo $multiple | tr a X)
echo "2:" $result

# Translating multiple characters
sequence="0123456"
result=$(echo $sequence | tr 135 ABC)
echo "3:" $result

# Translating multiple characters into the same character.
# Here odd numbers, are mapped to 'A'
sequence="0123456"
result=$(echo $sequence | tr 135 A)
echo "4:" $result

# Translating characters into spaces.
# Here odd numbers, are mapped to ' '
# We use the backward slash to escape the space character.
sequence="0123456"
result=$(echo $sequence | tr 135 \ )
echo "5:" $result

# Convert lower case into uppercase
phrase="This is in uppercase."
result=$(echo $phrase | tr a-z A-Z )
echo "6a:" $result

# Convert lower case into uppercase using character classes
phrase="Using character classes to convert to uppercase."
result=$(echo $phrase | tr '[:lower:]' '[:upper:]' )
echo "6b:" $result

# Mapping a to z to the subset of just 0 to 9.
phrase="abcdefghijklmnopqrstuvwxyz."
result=$(echo $phrase | tr a-z 0-9 )
echo "7:" $result

# Map spaces to commas
data="Spain Taiwan Botswana Argentina Canada"
result=$(echo $data | tr ' ' ',' )
echo "8:" $result
