#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo
echo "A look at the exit code"
echo "-----------------------"
echo
# See also: https://www.gnu.org/software/bash/manual/html_node/Exit-Status.html#Exit-Status

# Just for the record we write the values typically returned.
SUCCESS=0
SERIOUS=2  # for all standard bash commands
CMD_NOT_EXECUTABLE=126  # Command is found, but not executable
CND_NOT_FOUND=127  # Command not found
USER_1=1  # User defined exit code (user code range is: 1-125)

# When you write a script, consider what values you will return.

#
# A closer look at the exit code variable: $?
#
echo "Look at exit code variable \$?"
echo

false # effectively saying our last command result is 'false'
echo "1: exit code of (false) \$? = $?"
echo

true # effectively saying out last command result is 'true'
echo "2: exit code of (true) \$? = $?"
echo

ls $0  # Where $0 is the name of this file.
echo "3: 'ls' known file, exit code \$? = $?" # = SUCCESS
echo

ls ./this.is.a.unknown.filename
echo "4: 'ls' unknown file, exit code \$? = $?"  # = CMD_NOT_FOUND
echo

./data/empty-file.txt
echo "5: run data/empty-file.txt, exit code \$? = $?"  # = CMD_NOT_EXECUTABLE
# The text file isn't executable
echo

ls -V
echo "6: 'ls' with bad option, exit code \$? = $?"  # = SERIOUS
# Do have a look at ls --help
echo

date
echo "7: Known command (date), exit code: $?"
echo

notacommand
echo "8: Unknown command, exit code: $?"  # = CND_NOT_FOUND
