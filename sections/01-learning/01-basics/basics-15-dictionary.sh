#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo
# Dictionaries

echo "----Dictionary----"
declare -A country_capitals  # Don't use numeric indicies for this array
country_capitals=([Peru]="Lima" [Egypt]="Cairo" [Iran]="Tehran" [NewZealand]="Wellington")
echo "Capitals: ${country_capitals[*]}"
echo "Countries: ${!country_capitals[*]}"
echo
echo "----Another Dictionary----"
declare -A machine_states  # Don't use numeric indicies for this array
machine_states=(["Danger"]="Red" ["Warning"]="Yellow" ["Go"]="Green" ["Ready"]="Blue")
echo "Colours: ${machine_states[*]}"
echo "States: ${!machine_states[*]}"
echo
echo "----Number of states----"
echo "Length: ${#machine_states[*]}"
