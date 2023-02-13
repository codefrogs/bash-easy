#!/bin/bash
# Bash-easy by Codefrogs
# Handling arguments, argument lists, and arguments with spaces.
#
echo "Bash-easy by Codefrogs"
echo

# This script just calls all the other scripts.
# Have a look at each inter-04 script to see how each one works.
#

# Handling multiple parameters
echo '1: Using dollar-star: $*'
echo '1:----------------------'
echo '1: Script contains: for arg in $*; do.'
echo '1'
echo "1: ./inter-04.1-display-with-dollar-star.sh elephant mouse cat dog piglet"
./inter-04.1-display-with-dollar-star.sh elephant mouse cat dog piglet
echo '1: Notice that $*, returns all the arguments.'
echo

# Lets make up some new arguments that contain spaces.
arg1="My Books"  # Argument with two words!!
arg2="My Notes"
arg3="My Music"
# Now this means that each word could be treated as a separate arguments,
# but we don't normally want that.

# To treat the two words as one argument, we surround the arguments
# in quotes. Makes sense right?! Let's try that out.
echo '2: Quoting arguments'
echo '2: -----------------------------'
echo '2: Script contains: for arg in "$*"; do.'
echo '2:'
echo '2: ./inter-04.2-display-with-dollar-star-in-quotes.sh "$arg1" "$arg2" "$arg3"' # backslash to escape quotes
./inter-04.2-display-with-dollar-star-in-quotes.sh "$arg1" "$arg2" "$arg3"
echo "2:"
echo "2: That didn't work as expected! :("
echo '2: "$*" returns all the arguments as one argument! Disaster!'
echo

echo "Let's look at the parameters when we quote the arguments."
echo "We do this using a script called: show_args"
echo './show_args.sh  "$arg1" "$arg2" "$arg3"'
./show_args.sh "$arg1" "$arg2" "$arg3"
echo "Perfect!"
echo "Each argument (including spaces) was passed to our script."
echo "So what went wrong with our earlier script?"
echo
echo '4: How to handle items with spaces'
echo '4: -------------------------------'
echo '4: Now using "$@"'
echo '4: Script contains: for arg in "$@"; do.'
echo '4:'
echo "4: ./inter-04.3-using-quoted-dollar-at.sh \"$arg1\" \"$arg2\" \"$arg3\""
./inter-04.3-using-quoted-dollar-at.sh "$arg1" "$arg2" "$arg3"
echo "Pefect!"
echo
echo '5: But what happens if we drop the double quotes?'
echo '5: Script contains: for arg in $@; do.'
echo '5:'
echo "5: inter-04.4-using-dollar-at.sh \"$arg1\" \"$arg2\" \"$arg3\""
./inter-04.4-using-dollar-at.sh "$arg1" "$arg2" "$arg3"
echo
echo "We end up with our arguments being broken up by single word again!"
echo "Booo!"
echo "So what's happening? Double quotes prevent the shell from splitting"
echo "up strings using a space as a 'delimiter'."
echo '"$*" -> This is just a single string of all the parameters.'
echo '"$@" -> expands as a set of quoted positional parameters.'
