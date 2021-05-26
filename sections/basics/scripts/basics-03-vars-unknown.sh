#!/bin/bash
# Bash-easy by Codefrogs
# We show how we can configure bash to stop if it finds a unknown variable.
# We do this by using 'set'.
# 'set -u' tells bash to STOP if it encounters an unknown variable.
# 'set +u' tells bash to just ignore unknown variables.
#
echo "Bash-easy by Codefrogs: unknown variables"
echo
file="route"

#Unknown variables
echo "The variable file      is known  : $file"
echo "The variable something is unknown: $something"  # shows empty space

# Configure undefined variables to issue error message and STOP.
set -u
echo "This is unknown: $something"
echo "This is never shown."

# Revert configration change
# set +u
# echo "This is unknown: $notknown"  # ignored
# echo "This is always shown."
