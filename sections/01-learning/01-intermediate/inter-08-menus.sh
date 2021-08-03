#!/bin/bash
# Bash-easy by Codefrogs
# Menu example using 'select'
# Note: CTRL-D exits the menu.
#

opt1_disk_usage="Check disk usage"
opt2_ip_address="Get IP address"
opt3_quote="Get quote of the day"
opt4_linux_dist="Get Linux distribution name"
opt5_exit="Exit"
options=("$opt1_disk_usage" "$opt2_ip_address" "$opt3_quote" "$opt4_linux_dist" "$opt5_exit")

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
function show_ip()
{
  echo "show_ip: implement"
}

function show_quote()
{
  echo "show_quote: implement"
}

function show_distribution()
{
  echo "show_distribution: implement"
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
done
