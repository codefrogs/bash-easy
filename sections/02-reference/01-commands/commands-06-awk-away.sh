#!/bin/bash
#
# Awk Examples
# TODO: implement
#
# Show use of awk selecting row/column in a table.
# e.g. awk /hello/{ print $1}

echo "Using columns.txt"
echo "Using awk to find a date, then show the location."
echo
echo "Finding a line of text with the date 1988, and displaying it:"
echo 'awk /1988/{print} data/columns.txt'
awk /1988/{print} data/columns.txt

echo
echo "The general format here is:"
echo "awk /<text to search>/{print} <filename>"
echo
echo 'Selecting lines matching the year 1979.'
echo 'awk /1978/{print} data/columns.txt'
awk /1979/{print} data/columns.txt

echo
echo 'Selecting the Age column.'
echo 'awk //{print $4} data/life.csv'
awk '//{print $4}' data/life.csv
echo
echo "The general format here is:"
echo 'awk //{print $<column>} <filename>'
echo
echo 'Here the // matches everyline, and in brackets it has the action
for each match, i.e. display column N'
echo
echo 'Selecting a cell (time) in a table. '
echo 'awk /1978/{print $2}\ data/columns.txt'
awk '/1979/{print $2}' data/columns.txt
