#!/bin/bash
# Bash-easy by Codefrogs
#
# Dirname example
#
echo "Bash-easy by Codefrogs"
echo

script_file=$(realpath $0)
echo "Script path: $script_file"
echo "basename: $(basename $script_file)"
