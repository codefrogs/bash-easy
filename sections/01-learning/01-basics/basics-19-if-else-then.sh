#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"

# if statements
#
# In these examples we will focus on the structure of 'if' statements.
# rather than the test condition, i.e. [[ -n $var ]]
# For the curious, test [[ -n $var ]], is true if $var is defined, or just empty.
#
# The test conditons will be explored in the 'test-integer/test-strings' scripts.
#

# Simple if-then
colour="white"
if [[ -n $colour ]]; then
   echo "1: colour= $colour"
fi

# Using && (AND) in an if statement
gamma="high"
black_level="low"

if [[ $gamma = "high" ]] && [[ $black_level = "low" ]]; then
  gamma="low"
  echo "2: gamma= $gamma"
fi

# Just for comparison with an empty string
# style=
# if [[ -n $style ]]; then
#    echo "1: if Style: $style"
# fi

# if-then-else example
if [[ -n $hue ]]; then
   echo "X: if Hue: $hue"
else
   echo "3: else Hue: undefined."
fi

# if-then-elfi example
transparency=0.8
if [[ -n $opacity ]]; then
   echo "X: if Opacity: $opacity"
elif [[ -n $transparency ]]; then
   echo "4: elif Transparency: $transparency"
fi

# if-then-elfi-else example
brightness=0.95
if [[ -n $darkness ]]; then
   echo "X: if Darkness: $darkness"
elif [[ -n $contrast ]]; then
   echo "X: elif Contrast: $contrast"
else
  echo "5: else Brightness: $brightness"
fi
