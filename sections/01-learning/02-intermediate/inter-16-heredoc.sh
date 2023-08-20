#!/bin/bash
# Bash-easy by Codefrogs
#set -e
echo "Bash-easy by Codefrogs"

# Example use of heredoc: https://tldp.org/LDP/abs/html/here-docs.html"
# It's a fancy word for saying, we can group some text together without
# using lots of 'echo' statements, or a way to create a file, or
# just output some text.

text=$(cat << EOF
Fee! Fie! Foe! Fum!
I smell the blood of an Englishman.
Be he 'live, or be he dead,
I'll grind his bones to make my bread.
EOF
)

echo "HereDoc example!"
echo "See:  https://tldp.org/LDP/abs/html/here-docs.html"
echo 
echo "Jack and the Beanstalk"
echo "${text}"
