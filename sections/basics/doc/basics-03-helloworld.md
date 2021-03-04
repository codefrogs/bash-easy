# Introduction

Perhaps the easiest thing on can do is a 'helloworld' in bash.
Thats can be done with the `echo` command, like this:

`echo "Hello World!"`

## Variables
We also have variables:

`myvar=1`

Notice that there are no spaces between the value, and the the equals sign.

We can display a variable with:
`echo $myvar`

The `$` sign is a special character, and it is used to reference variables.

### Const Variables
Bash also has constant variables, which are declared with the keyword `readonly`

`readonly gravity=9.8`

This means we can't change `gravity` once it is already set. Doing so causes an error.

### Text with variables
How about mixing variables with text?

```
prefix='data'
suffix='dat'
file=route
echo "File: $prefix-$file.$suffix"
```
There's no problem with that until we want to print perhaps something like:

`myprefixFILE-somefile.asuffix`

Now we need to use the bash curly brackets `{}`, and the echo line becomes:

'echo "File: ${prefix}FILE-$file.$suffix"'

But why? Well, if we didn't have the brackets, the variable name would be wrong, i.e. $prefixFILE, and that just doesn't exist!

### Unknown variables
So we can now neatly come onto the problem of undefined variables.
What happens when we try to use a variable that hasn't been defined?
So if we try this:

```
echo "This is known  : $file"
echo "This is unknown: $something"
```
It outputs:
```
This is known  : route
This is unknown:
```
A blank (/or space) is shown. Generally it's a good idea to be aware of undefined variables. There's a special command for this:

`set -u`

You can think of it as setting a bash configuration, and saying that 'undefined' things should result in an error message.
The output for the last line would be:

`line X: something: unbound variable`

where X is some line number. It's here that the script then *stops*.

We can likewise turn off this configuration using:

`set +u`

This is the default behaviour of bash. It allows undefined variables.
