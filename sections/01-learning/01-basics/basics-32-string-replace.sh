#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo
echo "Sub-strings"
echo "-----------"
echo

echo "0:      12345678901234"
text="Extraordinary!"
echo "1: text=$text"

t=${text/Extra/}
echo "2: \${text/Extra/} = '$t' - Replace 'Extra' with empty string"

pattern="Extra"
str="Anything but "
t=${text/"$pattern"/"$str"}
echo "3: \${text/$pattern/$str} = '$t' - Replace 'Extra' with string"

pattern="#*ord"
str="B"
t=${text/$pattern/"$str"}
echo "3: \${text/$pattern/$str} = '$t' - Replace 'Extra' using a pattern"

pattern="r"
str="R"
t=${text/$pattern/"$str"}
echo "4: \${text/$pattern/$str} = '$t' - Replace one 'r' with 'R'"

pattern="r"
str="R"
t=${text//${pattern}/$str}
echo "5: \${text//${pattern}/$str} = '$t' - Replace all r's with 'R'"

pattern="r*r"
str="-"
t=${text/${pattern}/$str}
echo "5: \${text/${pattern}/$str} = '$t' - Replace pattern 'r*r' with a dash"
