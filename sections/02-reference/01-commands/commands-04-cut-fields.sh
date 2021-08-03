#!/bin/bash
# Selecting fields
# cut --fields <list>
# cut -f       <list>
# list: <index>,...<index>

HEADER="---------------------------------"
echo $HEADER
echo "Using the cut command to remove columns from text."

# First column
echo
echo $HEADER
value="First Column\tSecond Column"
echo -e "$value" | cut --fields 1

# Using short option
echo
echo $HEADER
value="Ant\tAntacid\tAntagonise"
echo -e "$value" | cut -f 2

# 2nd column
echo
echo $HEADER
echo "Selecting 2nd column from tabbed.txt:"
cut --fields 2 data/tabbed.txt

#Show two fields
echo
echo $HEADER
echo "Selecting 2nd and 5th columns from tabbed.txt:"
cut --fields 2,5 data/tabbed.txt

#Field range
echo
echo $HEADER
echo "Selecting range 2-5 columns from tabbed.txt:"
cut --fields 2-5 data/tabbed.txt

#Delimiter
echo
echo $HEADER
echo "Selecting columns from a CSV file:"
cut -d, --fields 1,3-4 data/life.csv

#Using a 'up to' file number, and colon as a seperator.
echo
echo $HEADER
echo "Passwd file; columns delimited by colon:"
cut -d: -f -2 data/passwd.txt
