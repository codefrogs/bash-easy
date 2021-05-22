#!/bin/bash
# Control flow:
#
# - loops
# - return
# - exit
echo "Control flow"
echo "------------"
echo
#The 'familiar?' C-loop
printf "C-loop: "
for ((i=0; i < 10; i++)); do
  printf "%d " $i
done

echo

# More bash-centric
printf "Loop with seq: "
for i in $(seq 0 9) ;  do
  printf "%d " $i
done
echo

# More bash-centric
printf "Loop over words: "
for name in Centaurs Cerberus Charybdis Griffins ;  do
  printf "$name "
done
echo

#Using continue
printf "Using continue: "
for ((i=0; i < 10; i++)); do
  if ((i%2==0)); then
   continue
  fi
  printf "%d " $i
done
echo

#Using break
printf "Using break: "
num=5
for ((i=0; i <= 100; i++)); do
  if ((i==num)); then
    printf "%d\n" $i
    break
  fi
  printf "%d, " $i
done

#Using while
printf "Using while: "
seq_cnt=0
while [[ -z $found ]]; do
  if ((seq_cnt > 5)); then
    found="Y"
    printf "Y"
  else
    printf "N"
  fi
  ((seq_cnt++))
done
echo
