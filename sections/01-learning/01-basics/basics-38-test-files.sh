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
  echo "3: This script is not a directory: ${script_name}"
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
  echo "6: This script file is a regular file: ${script_name}"
else
  echo "X: Not a regular file!"
fi

# Test if this script is a regular files
if [ -f /dev/null ]; then
  echo "X: The null device is a regular file!!!"
else
  echo "7: The device /dev/null is not a regular file."
fi

# You can test to see if a file is a special character file with:
DEV_NULL="/dev/null"
if [ -c ${DEV_NULL} ]; then
  echo "8: Special character file: ${DEV_NULL}"
else
  echo "X: Not a special charcter file: ${DEV_NULL}"
fi

# Test if this script is not empty & exists.
if [ -s ${script_name} ]; then
  echo "9: This script exists and is not empty."
else
  echo "X: This script is empty or does not exist!!"
fi

# Test if this script is not empty & exists.
EMPTY="data/empty-file.txt"
if [ -s ${EMPTY} ]; then
  echo "X: This file (${EMPTY}) exists and is not empty."
else
  echo "10: This file (${EMPTY}) is empty or does not exist!!"
fi

# Test if this script is not empty & exists.
NOWHERE="nowhere"
if [ -s $NOWHERE ]; then
  echo "X: This file ($NOWHERE) exists and is not empty."
else
  echo "11: The file ($NOWHERE) is empty or does not exist!!"
fi

# Permissions
# There are typically three permissions you will often need to check:
# -r - read    permission
# -w - write   permission
# -x - execute permission

# Let's check if this file has read permission.
if [ -r ${script_name} ]; then
  echo "12: You have read permissions for: ${script_name}."
else
  echo "Sorry you can't read: ${script_name}!"
fi

# Let's check if this file has read permission.
if [ -r unknown_file ]; then
  echo "X: You have read permissions for unknown file!"
else
  echo "13: Sorry you can't read: unknown_file!"
fi

# Can you execute this script?
if [ -x ${script_name} ]; then
  echo "14: You can execute: ${script_name}"
else
  echo "X: Sorry you aren't allowed to execute: ${script_name}!"
fi
