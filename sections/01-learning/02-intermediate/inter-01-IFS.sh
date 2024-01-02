#/bin/bash

# Bash-easy by Codefrogs
#set -e
echo "Bash-easy by Codefrogs"
# Shows how to use the IFS variable in for loops
# to separate out items in a line of text that have a field separator
# that isn't a space character.

# We create text with newlines.
items=$(echo -e "Red 1\nGreen 2\nBlue 3\n")

# Now we want to list each item separately

OLDIFS="$IFS" # Firstly we store the internal field separator (IFS)
IFS=$'\n'  # Our items are separated by newlines

# The 'for' loop will use '\n' to separate out the items in 'items'.

for item in ${items}; do
  echo "Item: $item"; 
done

IFS="$OLDIFS" # Restore the IFS as subsequent code may expect a 'space' as the
              # field separator.
