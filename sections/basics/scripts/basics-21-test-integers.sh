#!/bin/bash
# Bash-easy by Codefrogs

# Using if with integers
# No floats here!
# We can use:
# -gt (greater than)
# -lt (less than)
# -eq (equal)
# -nq (not equal to)
# -le (less or equal to)
# -ge (greater or equal to)

echo "Bash-easy by Codefrogs"
echo

bob="83"
victor="15"
if [ $bob -gt $victor ]; then
  echo "1: Bob(83) is older than Victor(15)!"
fi

amp1=55
amp2=55
if ((amp1==amp2)); then
  echo "2: Amplitude same: $amp1 = $amp2"
fi

freq1=55
freq2=54
if (( freq1!=freq2 )); then
  echo "3: Frequencies differ: $freq1 != $freq2"
fi

prime1="11"
prime2="17"

if ((prime1 < prime2)) ; then
   echo "4: Prime: $prime1 < $prime2"
fi

doping1="898"
doping2="113"
if ((doping1 > doping2)) ; then
   echo "5: Doping: $doping1 > $doping2"
fi

weight1=75
weight2=70
if ((weight1 >= weight2)) ; then
  echo "6: Weight: $weight1 >= $weight2"
fi

temp1=120
temp2=120
if ((temp1 >= temp2)) ; then
  echo "7: Temp: $temp1 >= $temp2"
fi
