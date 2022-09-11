#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo

#Integers
val_int=5
echo " 1: Integer: $val_int"

val_float=5.66666
echo " 2: Float: $val_float"

#Addition two Integers
p1=3
p2=7
result=$(($p1+$p2))
echo " 3: 3+7 = $result"

# Multiply two Integers
v1=2
v2=8
result=$(($v1*$v2))
echo " 4: 2*8 = $result"

#Addition two floats
p1=3.2
p2=7.1
# NO! result=$(($p1+$p2))
# We can use 'bc' or 'awk'
result=$(echo | awk '{ print v1+v2 }' v1=$p1 v2=$p2 )
echo " 5: 3.2+7.1 = $result"

# Multipy two floats
v1="3.2"
v2="1.8"
# NO! result=$(($v1*$v2))
# We can use 'bc' or 'awk'
result=$(echo $v1*$v2 | bc -l)
echo " 6: 3.2 * 1.8 = $result"

# Pre increment
i=32
echo " 7: i   = $i"
echo " 8: ++i =" $((++i))
echo " 9: i   =" $i
echo "10: i++ =" $((i++))
echo "11: i   =" $i

#Increment with +=
file_count=1
echo -e "\nUsing +="
echo "12: file_count=  : $file_count"
((file_count+=1))
echo "13: file_count+=1: $file_count"
((file_count+=1))
echo "14: file_count+=1: $file_count"

#decrement with -=
file_count=1
echo -e "\nUsing -="
echo "15: file_count=  : $file_count"
((file_count-=1))
echo "16: file_count+=1: $file_count"
((file_count-=1))
echo "17: file_count+=1: $file_count"
