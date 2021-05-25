#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"

echo "Variables with export"

#Local variables
local_var="Local to the parent"
export exported_var="Exported in the parent"


#Display a variables
echo "Parent: local_var    = " $local_var
echo "Parent: exported_var = " $exported_var

./basics-11.1-export-child.sh
