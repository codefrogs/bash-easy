# Using printf
##### See: man print

The basic format of printf is:

`printf <string>`

To print more than one line we need to use the format string:

`printf "<format>" <string>...<string>`

So for every '<string>' it is processed by the '<format>'. In a way you can think of the format as consuming the arguments.
The format can contain for example "%s". The 's' stands for a string.
So each string is then processed and displayed.
If the format contained '%s %s', then the format consumes two parameters at a time.

So we can print a set of lines with:

`print "%s" "Item one" "Item 2" "Item 3" "Item4"`

Likewise, printing two items at a time can be done with:

`printf "%s %s\n" "1..." "2..." "3..." "4..."`

Output:
```
1... 2...
3... 4...
```

We can also create a table using `printf` and the formatting string.
Let's say we want to create a table that looks like this:

```
-----------------------------------------------
| name       |   lines   |  files             |
-----------------------------------------------
| Manager    |      105  | master_manager.cpp |
| State      |       76  |          state.cpp |

```
And so on...
Firstly we need to know how to create a fixed width column.
Using:

`printf "%10s" "Brian" "Jason" "Xavier"`

Outputs:

```
    Brian     Jason    Xavier
```

We can also align the text left by adding a minus sign.

`printf "%-10s" "Brian" "Jason" "Xavier"`

So now we know enough to create a fixed with and aligned table.

Let's say we have a few variables to print in a table.
The code might look like this:

```
name=Manager
lines=105
file=manager.cpp

printf "| %-15s | %8d | %-20s |" $name $lines $file
printf "\n"
```
Outputs:
```
| Manager         |      105 | manager.cpp          |
```
