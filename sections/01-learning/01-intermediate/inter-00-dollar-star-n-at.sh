# Bash-easy by Codefrogs
# Menu example using 'select'
# Show the difference between '$*' and '$@'
# We lightly touched on this in 'basics'.

names=("David Jones" "Peter Moss" "Belinda Smyth" "Kiko Hamilton")

# List names
echo "Listing names:"
declare -i i=1

echo 'Using $*'
for name in ${names[*]}  # Each item is treated separately
do
  echo "$i: $name"
  ((i++))
done

echo
echo 'Using $@'
for name in ${names[@]}  # Each item is treated separately
do
  echo "$i: $name"
  ((i++))
done

# Now with quotes!
echo
echo "--------Using quotes------"
echo
echo 'Using $*'
for name in "${names[*]}"  # Treated as a single item.
do
  echo "$i: $name"
  ((i++))
done
echo
echo 'Using $@'
for name in "${names[@]}"  # Each item in array is individually quoted
do
  echo "$i: $name"
  ((i++))
done
