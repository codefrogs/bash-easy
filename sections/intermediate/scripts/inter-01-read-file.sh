#!/bin/bash
# Bash-easy by Codefrogs
# We show how to read in a file.
# See commands/scripts/commands-*-find.sh
#
echo "Bash-easy by Codefrogs"
echo

# Reading a file line by newline
echo "1: Reading line by line"
echo "-----------------------"
while read line; do
  echo "$line"
done < data/file-1.txt
echo

# Using 'REPLY' to show contents of a file.
echo "2:  lines using \$REPLY"
echo "-----------------------"
while read; do
  echo "'$REPLY'"
done < data/file-2.txt
echo

# Reading in data
echo "3: Reading fields"
echo "-----------------"
while read first surname location; do
   echo "User: $surname, $first"
   echo "Location: $location"
done < data/users.dat
echo

# Reading in a CSV file
echo "4: Reading a CSV file: Using IFS"
echo "--------------------------------"
OLDIFS="$IFS"  # The seperator
IFS=","
while read first surname location tel; do
   echo "User: $surname, $first"
   echo "Location: $location"
   echo "Tel: $tel"
done < data/phonebook.csv
echo
IFS="$OLDIFS"

# Using 'cat' to read lines of text, with '\n' as a seperator.
echo "5: Reading lines: Using IFS"
echo "---------------------------"
echo
filename="data/story.txt"
OLDIFS="$IFS"
IFS=$'\n'
for line in $(cat "$filename" ); do
  echo "$line"
done
echo
