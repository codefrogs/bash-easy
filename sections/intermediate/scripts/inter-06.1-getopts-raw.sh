#!/bin/bash
# Bash-easy by Codefrogs
# Shows the basic usage of getopts
#
# getopts variables:
# OPTARG - last value processed
# OPTIND - index of next argument to processed
# OPTERR - flag used for getopts to display error messages

optstring="hiu:v"  # defines four options, hiuv
                   # the colon means the 'u' has an argument

while getopts "$optstring" opt  # name is the option value
do
  echo "option: $opt"  # the option name
  #if [[ $OPTARG ]]; then echo "OPTARG: $OPTARG"; fi
  [[ $OPTARG ]] && echo "OPTARG: $OPTARG" # the argument for an option
  echo "OPTIND: $OPTIND"  # the index of the next argument
done
echo
echo "Final"
echo "-----"
echo "option: $opt"  # This should be '?'
#echo "OPTARG: $OPTARG"  # Should be empty
echo "OPTIND: $OPTIND"  # The index to the next argument
