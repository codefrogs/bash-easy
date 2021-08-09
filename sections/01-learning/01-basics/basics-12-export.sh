#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo
echo "Variables with export"
echo "---------------------"
echo
#Local variables
local_var="Local to the parent"
export exported_var="Exported in the parent"


#Display a variables
echo "Parent: local_var    = " $local_var
echo "Parent: exported_var = " $exported_var
echo
./basics-12.1-export-child.sh
