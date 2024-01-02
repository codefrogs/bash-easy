#/bin/bash

function splice_name()
{
    dir=$1
    # Here we use regular expression matching.
    # To explain, there are two sub-expressions:
    # 1. ([[:alpha:]_]*)
    # 2. ([[:digit:]]+)
    # Sub expression 1. matches 'alphabetic' characters or underscores.
    # The '*' means 'any number 0-n' of matches.
    # Sub expression 2. matches only digits, but there must be at least one.
    # Together they match filenames that have a numeric suffix.

    if [[ "$dir" =~ ([[:alpha:]_]*)([[:digit:]]+) ]]; then
          name=${BASH_REMATCH[1]}
          index=${BASH_REMATCH[2]}
	  echo "${name} ${index}"
    fi
    # When using regular expression matches, the variable BASH_REMATCH is populated.
    # The 'BASH_REMATCH' contains the matched text, and the sub-expression matches.
    # BASH_REMATCH[0] is all the text that matched.
    # BASH_REMATCH[1] is the first sub-expression match.
    # BASH_REMATCH[2] is the second sub-expression match.

}

function join_names()
{
    # Given the input parameters for this function are
    # Separated by newlines, we change the Internal Field Seperator (IFS). 
    # That means our 'for' loop knows how to split up text.
    OLDIFS="$IFS"
    IFS=$'\n'

    # Here, $@ contains the filenames for the form 'some_dir 1\n' 'some_dir 2\n'...
    # Each 'row' is terminated by a new line.
    # If we didn't set IFS, it would wrongly use the space character to select text.
    # For each row, which contains 'some_dir <n>', we remove the space character.
    # This is done by using 'tr'.
    for row in $@; do
        name=$(echo $row | tr -d ' ')
        echo "$name"
    done

    IFS="$OLDIFS" # We restore the global IFS, as we want the default/old behaviour back.
}

function splice_filenames()
{
    # We just cycle through each file
    # Note that 'filenames' contains names separated by spaces.
    filenames=$@
    for file in ${filenames}; do
        splice_name "${file}"
    done
}

function sort_files()
{
    # Sorting in bash is done with 'sort'.
    # We use the special '-k' option to sort on fields.
    # Here, -k1,1 means sort on field 1 alphabetically.
    #       -k2,2 means sort on field 2 numerically.
    # The numbers here are the starting and end field numbers.
    # By default a field is a space.
    # The input text here is made up of two columns:
    #   <Text> <number>
    # i.e.
    # some_dirs 1
    # some_dirs 10
    # some_dirs 11
    # some_dirs 12
    # some_dirs 2
    # ...

    spliced_files="$@"
    printf "%s %s\n" ${spliced_files} | sort -k1,1 -k2,2n
}


# Make the directories first
mkdir -p some_dirs{1..12}  # This is called: brace-expansion, and it creates 12 files numbered 1 to 12.

dirs=$(ls -d -- */) # This means list directories '-d'
                    # The '--' means that no more options follow.
		    # The '*/' means match any directory name, as these end in '/'.
		    # The result of this is just one line of text containing
		    # all the directory names.

spliced_names=$(splice_filenames $dirs)  # This breaks up the names into two columns, text & the number
sorted_rows=$(sort_files ${spliced_names}) # We can then properly sort the names
join_names "${sorted_rows}"  # Once sorted we put the names back together.

# Just request a cleanup
read -n 1 -p "Delete directories (Y/N)?" ANS
echo

if [[ ${ANS} == "y" ]]; then
  echo "Deleting..."
  rm -rf some_dirs{1..12}
fi

# Yes, we could delete each file as listed in 'dirs', but that's not the intent
# of this example. We just want an ordered list if filenames!

