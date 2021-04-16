#!/bin/bash
echo "Bash-easy by Codefrogs"
echo
# An array that holds a list of items.
# Notice: No commas here!
items=('Water' 'Fish' 'Frogs' 'Lilly' 'Weed' 'Newts' 'Algae')

echo "Item[0]: ${items[0]}"
echo "Item[1]: ${items[1]}"
echo "Item[2]: ${items[2]}"
echo "Item[3]: ${items[3]}"
echo "Item[4]: ${items[4]}"
echo "Item[5]: ${items[5]}"
echo "Item[6]: ${items[6]}"
echo
echo "----Array Length----"
echo "Length: ${#items[*]}"
echo "----Array item length----"
echo "Length of ${items[1]}=${#items[1]}"
echo
echo "----Negative Indexes----"
echo "Item[-1]: ${items[-1]}"
echo "Item[-2]: ${items[-2]}"
echo "Item[-3]: ${items[-3]}"
echo
echo "---Expand all with '@'---"
echo "${items[@]}"
echo
echo "---Expand all with '*'---"
echo "${items[*]}"
echo
echo "---Changing an item---"
items[0]='Fire'
echo "${items[*]}"
echo
echo "---Appending an item---"
items[7]='Pascals'
echo "${items[*]}"
echo
echo "----Array Length----"
echo "Length: ${#items[*]}"
echo
echo "---Appending with operator '+='"
items+=('Salamander')
echo "${items[*]}"
echo
echo "---Remove Fish item---"
unset items[1]
echo "${items[*]}"
echo
echo "---Alternative Create array"
data=( [0]=Margin_Top [4]=Margin_Bottom [1]=Header [3]=Footer [2]=Body)
echo "Data: ${data[*]}"
echo
echo "---Create sparse array"
atomic_num=([3]=Lithium [92]=Uranium [79]=Gold [13]=Magnesium [26]=Iron)
echo "Elements: ${atomic_num[@]}"
echo
echo "----Show indexes----"
echo "Atomic numbers: ${!atomic_num[@]}"
echo
