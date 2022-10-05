#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo

# Just for the record we write the values typically returned.
SUCCESS=0
SERIOUS=2  # ls exit code.
CMD_NOT_EXECUTABLE=126  # Command is found, but not executable
CND_NOT_FOUND=127  # Command not found
MINOR_PROBLEM=1  # ls exit code.

# When you write a script, consider what values you will return.

#
# A closer look at the exit code variable: $?
#
echo "Using exit codes with if"

if ls $0 ;then
  echo "1: Found this file: $0"
fi
echo
ls $0

if [ $? -eq $SUCCESS ]; then
  echo "2: Found this script, exit code: SUCCESS($?)"
fi

echo
FILENAME=$(ls $0)
RESULT=$?

if [ $RESULT == $SUCCESS ]; then
  echo "3: Found this script, exit code: SUCCESS($RESULT)"
fi

echo
if ls ./this.is.a.unknown.filename; then
  echo "X:Found unknown file!"
else
  echo "4: Did not find: ./this.is.a.unknown.filename"
fi

echo
if notacommand; then
  echo "X: Exit code of 'notacommand' is: $?"
else
  echo "5: Unknown command \$?: $?"
fi

echo
if ! notacommand; then
  # The last command here succeeded.
  echo "6: Negate command result using: if ! notacommand."
fi

echo
if date; then
  # The last command here succeeded.
  echo "7: Showed date, exit code \$?: $?"
fi
