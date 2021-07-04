#!/bin/bash
# Bash-easy by Codefrogs
# Running script with options and arguments
#
echo "Bash-easy by Codefrogs"
echo


# Show the help
echo "./inter-05.1-simple.sh -h"
      ./inter-05.1-simple.sh -h
echo

# Show the help
echo "./inter-05.1-simple.sh --help"
      ./inter-05.1-simple.sh --help
echo

# Show the version
echo "./inter-05.1-simple.sh --version"
      ./inter-05.1-simple.sh --version
echo

# Show the information
echo "./inter-05.1-simple.sh --info"
      ./inter-05.1-simple.sh --info
echo

# Show the version, and information
echo "./inter-05.1-simple.sh -v -i"
      ./inter-05.1-simple.sh -v -i
echo

# Run with info and give two arguments
echo "./inter-05.1-simple.sh -i apple cake"
      ./inter-05.1-simple.sh -i apple cake
echo

# Run with info and give too many arguments
echo "./inter-05.1-simple.sh engine oil monkey"
      ./inter-05.1-simple.sh engine oil monkey
echo

# Give an unknown option
echo "./inter-05.1-simple.sh -u"
     ./inter-05.1-simple.sh -u
echo

# Try things in wrong order
echo "./inter-05.1-simple.sh captain wood -v"
      ./inter-05.1-simple.sh captain wood -v
echo
