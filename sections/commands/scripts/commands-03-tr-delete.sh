#!/bin/bash

echo "Using the tr command to translate characters."

# Deleting
# Delete a set of characters.
# tr --delete <setA>
# tr -d       <setA>
# This deletes characters found in set A.

# Delete the 'a's
echo "--------------------"
value="aaaa1111"
echo "0: $value" | tr --delete a

# Same again but with -d short hand option.
echo "--------------------"
value="aaaa1111"
echo "1: $value" | tr -d a
echo

# Remove commas
echo "--------------------"
event="2021, Russia, 4.7, 46.692000, 152.778000"
result=$(echo -e $event | tr -d , )
echo -e "2: $result"
echo

# Remove letters and punctuation and whitespace.
# Then remove extra spaces
echo "--------------------"
text=$(cat data/sample.txt)
result=$(echo -e "$text" | tr -d '[:alpha:][:punct:]' )
result=$(echo -e "$result" | tr -s '[:space:]' )
echo -e "3: $result"
echo "--------------------"
echo

# Get index from text.
echo "--------------------"
text="filename-008.txt"
echo $text
result=$(echo -e "$text" | tr -d '[:alpha:][:punct:]' )
echo -e "4: Index=$result"
echo "--------------------"
