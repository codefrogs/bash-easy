#!/bin/bash
# Bash-easy by Codefrogs
echo "Bash-easy by Codefrogs"
echo

function clear_up()
{
  unset db_name
}

# We return to variables to see what we do
# with default, and null values.

# Let's say we want the 'name' variable to not be null.
# We also don't define it, but want a default value.
# We can do 'parameter substitution'. 

#
# Defaults using '-'
#

# 'db_name' is not declared.
db_name=${db_name-"Default"}
echo "1a: New name: $db_name (Default)" # Uses 'Default'
clear_up

# 'db_name' is declared but null.
db_name=
db_name=${db_name-"Default"}
echo "2a: New name: $db_name (Empty)"  # You get a empty string.
clear_up

# 'db_name' is an empty variable.
db_name=""
db_name=${db_name-"Default"}
echo "3a: New name: $db_name (Empty)" # Is empty.
clear_up

# 'db_name' is defined.
db_name="PostgreSQL1"
db_name=${db_name-"Default"}
echo "4a: New name: $db_name (PostgreSQL1)" # You get 'PostgreSQL1'
clear_up

#
# Default values, using ':-'
# This does apply the default for undefined, and null variables.

# 'db_name' is not defined.
db_name=${db_name:-"Default"}
echo "1b: New name: $db_name (Default)"  # You get 'Default'. 
clear_up

# 'db_name' is declared but null.
db_name=
db_name=${db_name:-"Default"}
echo "2b: New name: $db_name (Default)" # You get 'Default'.
clear_up

# 'db_name' is an empty variable. What will happen?
db_name=""
db_name=${db_name:-"Default"}
echo "3b: New name: $db_name (Default)" # You get 'Default'.
clear_up

# 'db_name' is defined.
db_name="PostgreSQL1"
db_name=${db_name:-"Default"}
echo "4b: New name: $db_name (PostgreSQL1)" # You get 'PostgreSQL1'
clear_up
