#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo

# Just for the record we write the values typically returned.
SUCCESS=0
BAD_USAGE=2  # for all standard bash commands
CMD_NOT_EXECUTABLE=126  # Command is found, but not executable
CND_NOT_FOUND=127  # Command not found
USER_1=1  # User defined exit code (user code range is: 1-125)

# When you write a script, consider what values you will return.

#
# A closer look at the exit code variable: $?
#
echo "Look at exit code variable \$?"

false # effectively saying our last command result is 'false'
echo "1: exit code of (false) \$? = $?"

true # effectively saying out last command result is 'true'
echo "2: exit code of (true) \$? = $?"

# inspecting the result of a command
echo "3: Check this file: "
ls $0  # Where $0 is the name of this file.
echo "4: exit code \$? = $?"

# inspecting the result of a command
echo "5: Check non-existent file: "
ls ./this.is.a.unknown.filename
echo "6: exit code \$? = $?"

echo "7: Check this file with an if:"
if ls $0 ;then
  echo "8: Found this file: $0"
fi

echo "9: Check non-existent file with an if:"
if ls ./this.is.a.unknown.filename; then
  echo "X:Found unknown file!"
else
  echo "10:Did not find: ./this.is.a.unknown.filename"
fi

echo "11: Run unknown command"
notacommand
echo "Exit code of 'notacommand' is: $?"

echo "12: Run unknown command with an if:"
if ! notacommand; then
  # The last command here succeeded.
  echo "13: Count not run the command 'notacommand', BUT we have exit code: $?"
fi

if notacommand; then  # The last command here succeeded.
  echo "X: You will never see this."
fi

echo "14: Run unknown command with an if:"
if date; then
  # The last command here succeeded.
  echo "15: Showed date, exit code: $?"
fi
