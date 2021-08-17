# Bash-easy by Codefrogs
# Dollar-dash: $-
# This shows the options that have been set.
#
# One of those options is 'i'. We can detect if a script is interactive.
# So what is meant by 'interactive'? That the user is able to input data?
# Well, it means that a script is running in a command shell, or is running
# as a script.
#
# To compare, try the following:
# ./inter-xx-dollar-dash.sh
# source ./inter-xx-dollar-dash.sh
#
# see: set
# see: shopt

# Check to see if in interactive shell.
#
echo "Options are (\$-): $-"  # Shows the options that have been set with 'set' or 'shopt'

echo "Checking if in interactive shell..."
case $- in
  *i*) echo "Interfactive";;   # run from an interactive shell
  *) echo "Non-interactive";;  # e.g. when just running a script
esac
