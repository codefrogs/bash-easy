#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo
# 1. Listing the files in the current directory.
# 2. We show how to read in a file
#
# We could use 'ls' BUT it's useful for when there are 'spaces' in a filename.
# See: www.gnu.org/software/findutils
# See: www.digitalocean.com/community/tutorials/how-to-use-find-and-locate-to-search-for-files-on-linux

# A basic list of files in the current directory using '*'.
# This can be suprising, but try experimenting with echo * on the command line.
#
star="*"  # Just a star character
echo "1: Using echo *"
echo "---------------"
echo $star  # The star gets expanded here. Notice there are NO quotes.
echo

# Using find to list directory
echo "2: Use find without parameters \$(find):"
echo "---------------------------------------"
files=$(find)  # The dot means: use the current directory.
echo "$files"
echo

# Using 'find' with some parameters
# -print means filenames are separated by a newline.
# -print0 means filenames are separated by a null character.
#
echo "3: Use find with parameters."
echo "----------------------------"
start_point="."  # search from the current directory
tests='*' # find all files
action='-print' # print to standard output.

files=$(find "$start_point" -name "$tests" "$action")
echo "$files"
echo

# Get a list of files:
echo "4: Show found files as a list"
echo "-----------------------------"
files=$(find "$start_point" -name "$tests" "$action" | tr '\n' ' ')
echo "$files"
echo

# Search multiple directories
echo "5: Use find to search multiple directories:"
echo "-------------------------------------------"
search_dirs="dummy-files ../../basics/doc"
tests='*' # find all files
action='-print' # print to standard output.

# Notice we don't have quotes around the directories, as this is not
# a single name.
files=$(find $search_dirs -name "$tests" "$action")
echo "$files"
echo

# Search multiple directories
echo "6: Use find with pattern matching '*if*.sh':"
echo "--------------------------------------------"
search_dirs="../../"
pattern='*if*.sh' # find all files that contain 'if'
action='-print' # print to standard output.

# Notice we don't have quotes around the directories, as this is not
# a single name.
files=$(find $search_dirs -name "$pattern" "$action")
echo "$files"
echo

echo "7: Find only directories"
echo "------------------------"
search_dirs="."
pattern="*"
action="-print"
files=$(find $search_dirs -type d -name "$pattern" "$action")
echo "$files"
echo

# Copying files to a new location.
echo "8: Using find with '-exec'"
echo "--------------------------"
# This copies text files in dummy-files to 'dummy-temp'.
src="dummy-files"
tests="*.txt"
action="-print"
dest="dummy-temp"

# This means:
# Find files in dummy-files, that end in '.txt'.
# When 'find' gets a file, it then fills the brackets '{}' with the filename.
# The command 'cp' is then executed.
# The command run by 'exec' ends with '\;'. This means it's the end of the
# command to execute.

echo "Files in 'dummy-files':"
find "$src" -name "$tests" "$action" -exec cp '{}' $dest \;
echo -e "\nMoved to $dest."
echo -e "\nFiles in $dest:"
find "$dest" -name "$tests" "$action"
echo
