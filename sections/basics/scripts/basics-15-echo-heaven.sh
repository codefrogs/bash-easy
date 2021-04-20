#!/bin/bash
echo "Bash-easy by Codefrogs"
# Using 'echo'

#Test with escape characters
some_text="I think\nTherefore I am.\nSocrates"

#Not what we want really
echo "Doesn't work: $some_text"
echo
echo -e "OK: $some_text"
echo
echo "Long line:"
echo "This is a rather long line, \
but we can split the text for readability \
without breaking it up when displaying it."
echo
#Echo without newlines
echo -n "Hello "
echo -n "my "
echo -n "name "
echo -n "is "
echo "Plato."
echo

# Echo with multiple lines
echo
val=$(ps -a)  # This has at least two lines of text
echo $val     # But they end up together here!
echo "$(ps -a)"  # Much better
