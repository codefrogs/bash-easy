#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"

#Most characters aren't special!
echo "Pound: £"  # Not an issue
echo "Likewise: %^&*()_+{}:@~?><|'!"

#Some are!
#Using backslash
echo "Dollar   : \$"  # Is a special character
echo "Quote    : \""
echo "Ampersand: \&"

# Single quotes!
# No need for backslash.@
# Alternatively we can do:
echo 'With single quotes: Dollar: $, Quote " Ampersand: &'

echo
echo "Percent sign with printf"
echo "--------------------------"
echo

#printf "Percent: %"  # BAD - percent sign
printf "Percent: %%\n"  # OK - prints '%'
