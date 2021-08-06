#!/bin/bash
# Bash-easy by Codefrogs
#
# Menu example using 'select'
# Note: CTRL-D exits the menu.
#

opt1_disk_usage="Check disk usage"
opt2_ip_address="Get IP address"
opt3_quote="Get quote of the day"
opt4_linux_dist="Get Linux distribution name"
opt5_exit="Exit"
options=("$opt1_disk_usage" "$opt2_ip_address" "$opt3_quote" "$opt4_linux_dist" "$opt5_exit")

quotes_file="$(dirname $0)/data/quotes.txt"

# Display disk usage
function show_disk_usage()
{
  df_text=$(df . -h | sed -n 2p)
  total=$(echo $df_text | cut -d ' ' -f2)
  used=$( echo $df_text | cut -d ' ' -f3)
  free=$( echo $df_text | cut -d ' ' -f4)
  printf "Used : %5s\n" "$used"
  printf "Free : %5s\n" "$free"
  printf "Total: %5s\n" "$total"
}

# Show the IP address of this machine
function show_ip()
{
  #address=$(ifconfig)  # deprecated!
  #address=$(ip addr show)  # More info IPv4 and IPv6 (also: ip a)
  address=$(hostname -I)
  echo "IP: $address"
}

# Display a quotation
function show_quote()
{
  if ! [[ -e $quotes_file ]]; then
    echo "Missing quotes file: $quotes_file"
    return 1
  fi
  line_cnt=$(wc -l $quotes_file | cut -d ' ' -f1)
  line_no=$(($RANDOM % line_cnt))
  quote=$(sed -n ${line_no}p $quotes_file)

  echo "$quote"
}

# Show name of Linux distribution
function show_distribution()
{
  cmd=$(which lsb_release)
  if [[ $? ]]; then
    dist_text=$(lsb_release -a 2> /dev/null | sed -n 2p | cut -d ':' -f2) # remove error messages
    dist_text="${dist_text#"${dist_text%%[![:space:]]*}"}"  # left trim
    echo $dist_text
    return
  fi

  cmd=$(which cat)
  if [[ $? ]]; then
    dist_text=$(cat /etc/*release | grep '^NAME' | cut -d '=' -f2)
    dist_text=${dist_text#\"} # remove quotes
    dist_text=${dist_text%\"}
    echo "$dist_text"
    return
  fi

  echo "Can't find distro name!"
}

PS3="Enter: " # prompt after menu is displayed

# 'select' has the same usage as the 'for' statement.
select name in "${options[@]}"
do
  if [[ $name ]]; then
    echo "$name..."  # Just to show what was selected
  else # 'name' is null
    echo "Unknown option! Giving up."
    break
  fi
  case $REPLY in  # REPLY is the index that was selected
    1) show_disk_usage ;;
    2) show_ip ;;
    3) show_quote ;;
    4) show_distribution ;;
    5) exit 0;;
    *) echo "Unknown option." ;; # Should never get here
  esac
  echo
done
