#!/bin/bash
echo "Bash-easy by Codefrogs"

# if statements
# We've already used the if statement previously in our 'test-integer/test-strings' scripts
# But just for reference.
# Note that the test [[ -n $var ]], is true if $var is defined, or just empty.
#

# Simple if-then
colour="white"
if [[ -n $colour ]]; then
   echo "1: if Colour: $colour"
fi

# Just for comparison with an empty string
# style=
# if [[ -n $style ]]; then
#    echo "1: if Style: $style"
# fi

# if-then-else example
if [[ -n $hue ]]; then
   echo "2: if Hue: $hue"
else
   echo "2: else Hue: undefined."
fi

# if-then-elfi example
transparency=0.8
if [[ -n $opacity ]]; then
   echo "3: if Opacity: $opacity"
elif [[ -n $transparency ]]; then
   echo "3: elif Transparency: $transparency"
fi

# if-then-elfi-else example
brightness=0.95
if [[ -n $darkness ]]; then
   echo "3: if Darkness: $darkness"
elif [[ -n $contrast ]]; then
   echo "3: elif Contrast: $contrast"
else
  echo "3: else Brightness: $brightness"
fi
