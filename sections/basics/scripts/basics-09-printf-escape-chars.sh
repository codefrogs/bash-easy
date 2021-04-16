#!/bin/bash
echo "Bash-easy by Codefrogs"

#The special characters
printf "%s " "Brian" "Jason" "Xavier"
printf "\n"

# Tabs
printf "%s\t " "Brian" "Jason" "Xavier"
printf "\n"

# double quote
printf "Double quote: \"  here"
printf "\n"

#backslash
printf "Backslash: \\  here."
printf "\n"

#Move the cursor backslash
printf "Backspace\b"
printf "\n"

# Form feed... a kind of indent!?
printf "Form Feed:\f Let the truth be known!"
printf "\f1.Dogs hate cats."
printf "\f2.Cats love fish."

# New lines..we know this one!
printf "A\nB\nC\n"
printf "\n"

# carriage return (CR): Move to start of line!
# Handy for updating the same line multiple times.
printf "Step 1: get  down.\n"
printf "Step 2: get  up!\r"  # CR!
printf "Step 3: give\n"
printf "\n"

#The tab: Tabs away!
#Notice how the second column jumps when the first is wider than 7 characters
printf "1\tB\t3\tC\n"
printf "11\tBB\t33\tCC\n"
printf "123\tBBB\t123\tCCC\n"
printf "12345\tBBBBB\t12345\tCCCCC\n"
printf "1234567\tBBBBBBB\t1234567\tCCCCCCC\n"
printf "12345678\tBBBBBBB\t1234567\tCCCCCCC\n"
printf "12345678\tBBBBBBB\t1234567\tCCCCCCC\n"
printf "\n"

#Vertical tab: not that useful!
#Don't bother using it!
printf "Line1\v"
printf "Line2\v"
printf "Line3\n"
