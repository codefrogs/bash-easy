#!/bin/bash
# Bash-easy by Codefrogs
# Shows how to test for files.

# These are all the possible file test operators:
# -d - (for directory) - file is a directory.
# -e - (e for exists)  - file exists.
# -f - (f for file)    - the file is a regular file.
# -s - (s for size)    - the file is not empty and exists.
#
# For the complete list of test operators, type 'man test'.
#
# In the directory 'data' we have the following file:
#   empty.txt - an empty file

# Test if the 'data' directory is a directory:
if [ -d data ]; then
  echo "1: data is a directory."
else
 echo  "X: data isn't a directory or does not exist!"
fi

# Lets test if this file is a directory:
script_name=$0
echo "2: Script name is: ${script_name}"

if [ -d ${script_name} ]; then
   echo "X: This script is a directory!"
else
  echo "3: This script is not a directory."
fi

# We test for a non-existent directory.
my_dir="missing-dir"
if [ -d ${my_dir} ]; then
  echo "X: Found the missing directory!"
else
  echo "4: Can't find ${my_dir}, or it isn't a directory."
fi

# Test this script exists.
if [ -e ${script_name} ]; then
  echo "5: Script (${script_name}) exists."
else
  echo "X: Can't find this script: ${script_name}!"
fi

# Test if this script is a regular files
if [ -f ${script_name} ]; then
  echo "6: This script is a regular file."
else
  echo "X: Not a regular file!"
fi

# Test if this script is a regular files
if [ -f /dev/null ]; then
  echo "X: The null device is a regular file!!!"
else
  echo "7: The device /dev/null is not a regular file."
fi

# Test if this script is not empty & exists.
if [ -s ${script_name} ]; then
  echo "6: This script exists and is not empty."
else
  echo "X: This script is empty or does not exist!!"
fi
