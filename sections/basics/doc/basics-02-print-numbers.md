## Printing numbers
### See basics-08-printf-numbers.sh

Let's try printing a list of integers with:

`printf 12 947 238 31`

Well that only outputs a single '12'! We need to add a format string.

`printf "%d " 12 37 38 75`

Outputs: `298 372 382 28`

But what about floats?

`printf "%f" 382.383453`

Outputs: `382.383453`

But what if we only want just two decimal places?

`printf "%.2f" 382.383453`

If we want to create a fixed with table, we need some alignment.
So let's set the width to 8.

`printf "|%8.2f|\n" 382.383453 92317238.513 82.5556 0.001`

Outputs:
```
|  382.38|
|92317238.51|
|   82.56|
|    0.00|
```
The numbers are in a column of 8 spaces, except for that single long
number. Notice also that numbers are rounded up, i.e. that 82.5556 ends up being 82.56.

Does rounding up occur with an integer?

`printf "|%d|\n" 10.999`

Outputs:

`printf: 10.999: invalid number`
