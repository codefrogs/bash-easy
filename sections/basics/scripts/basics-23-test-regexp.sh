#!/bin/bash
echo "String comparisons using regular expressions."
echo

# Checking string ends with a digit
val="hume-chp-12"

# Using regular expression with anchor character '$'
# This requires the text to end with only a number.
if [[ $val =~ hume-chp-[[:digit:]]+$ ]]; then
  echo "Found a chapter."
else
  echo "Unknown book: $val"
fi

#Checking file ending.
val="filename.txt"
# This requires the text to end with only a number.
if [[ $val =~ \.txt$ ]]; then
  echo "Found text file."
else
  echo "Unknown filetype: $val"
fi

# Using regular expression with anchor character '^'
# Checking file prefix.
val="data-colour.txt"
# This requires the text to end with only a number.
if [[ $val =~ ^data- ]]; then
  echo "Found data file."
else
  echo "Unknown prefix: $val"
fi

# Check for number inside strings separated by hypen.
# filename must contain: '-<digits>-'
#
index_filename="basics-20-regexp.sh"
if [[ $index_filename =~ -[[:digit:]]*- ]]; then
  echo "Found indexed file."
else
  echo "Not indexed file!: $index_filename"
fi
