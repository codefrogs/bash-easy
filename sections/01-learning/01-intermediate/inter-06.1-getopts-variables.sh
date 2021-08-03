#!/bin/bash
# Bash-easy by Codefrogs
# Shows the basic usage of getopts
#
# getopts variables:
# OPTARG - last value processed
# OPTIND - index of next argument to processed
# OPTERR - flag used for getopts to display error messages

optstring="hiu:v"  # defines four options, hiuv
                   # the colon after the u means the 'u' has an argument.
#echo "Options are: $optstring"
echo
while getopts "$optstring" opt  # 'opt' is the option value
do
  if [[ $opt == '?' ]]; then
    #args=$@
    printf "Usage: %s [-h] [-i] [-u <user>] [-v]\n" ${0##*/} >&2
  else
    echo "Option: $opt"
  fi
  #if [[ $OPTARG ]]; then echo "OPTARG: $OPTARG"; fi
  [[ $OPTARG ]] && echo "Argument (OPTARG): '$OPTARG'" # the argument for an option
  echo "Option index: $OPTIND"  # the index of the next argument
done
echo
echo "Final"
echo "-----"
echo "option: $opt"  # This should be '?'
#echo "OPTARG: $OPTARG"  # Should be empty
echo "OPTIND: $OPTIND"  # The index to the next argument
