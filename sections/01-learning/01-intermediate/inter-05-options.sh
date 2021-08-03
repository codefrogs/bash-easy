#!/bin/bash
# Bash-easy by Codefrogs
# Running script with options and arguments
#
echo "Bash-easy by Codefrogs"
echo


# Show the help
echo "./inter-05.1-options.sh -h"
      ./inter-05.1-options.sh -h
echo

# Show the help
echo "./inter-05.1-options.sh --help"
      ./inter-05.1-options.sh --help
echo

# Show the version
echo "./inter-05.1-options.sh --version"
      ./inter-05.1-options.sh --version
echo

# Show the information
echo "./inter-05.1-options.sh --info"
      ./inter-05.1-options.sh --info
echo

# Show the version, and information
echo "./inter-05.1-options.sh -v -i"
      ./inter-05.1-options.sh -v -i
echo

# Run with info and give two arguments
echo "./inter-05.1-options.sh -i apple cake"
      ./inter-05.1-options.sh -i apple cake
echo

# An option with a parameter
echo "./inter-05.1-options.sh -u tanner"
      ./inter-05.1-options.sh -u tanner
echo

# Run with info and give too many arguments
echo "./inter-05.1-options.sh engine oil monkey"
      ./inter-05.1-options.sh engine oil monkey
echo

# Give an unknown option
echo "./inter-05.1-options.sh -q"
      ./inter-05.1-options.sh -q
echo

# Putting options after positional arguments
echo "./inter-05.1-options.sh beef stew -v"
      ./inter-05.1-options.sh beef stew -v
echo
