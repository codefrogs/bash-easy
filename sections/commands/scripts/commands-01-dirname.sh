#!/bin/bash
# Bash-easy by Codefrogs
#
# Dirname example
#
echo "Bash-easy by Codefrogs"
echo

script_name="$0"
echo "Script name: $script_name"

script_path=$(dirname $0)
echo "Script path: $script_path"
echo

curr_dir=$(pwd)

#Make up a filename
filename="${curr_dir}/random.txt"
echo "File     : $filename"
echo "File path: $(dirname $filename)"
echo
