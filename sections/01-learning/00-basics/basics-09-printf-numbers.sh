#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"

#printing numbers

#print integers
printf "%d " 12 37 38 75
printf '\n'

# A float
printf "%f" 382.383453
printf '\n'

# Setting the number of decimal places
printf "%.2f" 382.383453
printf '\n'

# Now lets add some alignment.
printf "%8.2f" 382.383453
printf '\n'

# Alignment with a border
printf "|%8.2f|" 382.383453
printf '\n'
printf '\n'

# Lets create a list of values in a column
printf "|%8.2f|\n" 382.383453 92317238.513 82.5556 0.001
printf '\n'

# Does rounding up occur with an integer?
# This just doesn't work! We get an invalid number
# printf "|%d|\n" 10.999
# printf '\n'
