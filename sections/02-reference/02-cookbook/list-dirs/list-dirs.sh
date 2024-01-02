#/bin/bash

# Make the directories first
mkdir -p some_dirs{1..12}

dirs=$(ls -d -- */)

# We have a list of directories
# Now we list them.

echo "Found:"

for dir in ${dirs}; do
  echo $dir
done

echo "Found ${#dirs[*]} directories."

read -n 1 -p "Delete 'some_dirs'(Y/N)?" ANS
echo

if [[ ${ANS} == "y" ]]; then
  echo "Deleting..."
  rm -rf some_dirs{1..12}
fi

# There are two things we would like to improve here:
# 1. remove the trailing '/'.
# 2. order the files according to value of the integer,
#    rather than the strictly alphabetical ordering.
#    We don't expect the number 10 to follow 1 as in the listing below:
#      some_dirs1/
#      some_dirs10/  - Not what we want
#      some_dirs11/
#      some_dirs12/
#      some_dirs2/
