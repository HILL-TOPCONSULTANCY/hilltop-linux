### Variables in Shell Scripting

In shell scripting, variables are used to store data that can be referenced and manipulated throughout the script. Variables help to make scripts more dynamic and flexible. There are two main types of variables in shell scripting:

1. **User-defined variables**: Variables that you create and assign values to within your script.
2. **Environment variables**: Predefined variables that the system and shell provide, such as `$HOME`, `$USER`, and `$PATH`.

#### Declaring Variables

In shell scripting, declaring a variable is as simple as assigning a value to a name without using the `=` sign surrounded by spaces. There is no need to specify a data type. Everything is treated as a string unless manipulated otherwise.

```bash
VARIABLE_NAME="value"
```

- No spaces around the `=`.
- The variable name is case-sensitive.
- By convention, variable names are often written in uppercase.

#### Accessing Variables

To access the value stored in a variable, prefix the variable name with a `$` symbol:

```bash
echo $VARIABLE_NAME
```

#### Example 1: Using a Simple Variable

```bash
#!/bin/bash
# Declare a variable
GREETING="Hello, World!"

# Access and print the variable
echo $GREETING
```

Output:
```
Hello, World!
```

#### Example 2: Using Variables with Strings

You can combine variables with strings:

```bash
#!/bin/bash
# Declare variables
NAME="John"
GREETING="Hello, $NAME!"

# Print the greeting
echo $GREETING
```

Output:
```
Hello, John!
```

#### Example 3: Arithmetic Operations with Variables

Variables can also be used for arithmetic operations, but you need to use the `$(())` syntax to perform calculations:

```bash
#!/bin/bash
# Declare variables
NUM1=5
NUM2=10

# Perform addition
SUM=$((NUM1 + NUM2))

# Print the result
echo "The sum is: $SUM"
```

Output:
```
The sum is: 15
```

#### Example 4: Reading User Input into a Variable

You can prompt the user for input and store the result in a variable using the `read` command:

```bash
#!/bin/bash
# Ask the user for their name
echo "Please enter your name:"
read USER_NAME

# Greet the user
echo "Hello, $USER_NAME!"
```

Output (after user input):
```
Please enter your name:
Alice
Hello, Alice!
```

#### Example 5: Environment Variables

Environment variables are predefined by the system and are available in every script. Some common environment variables include:
- **$HOME**: The current user's home directory.
- **$USER**: The current user's username.
- **$PATH**: The directories where the shell looks for executable files.

```bash
#!/bin/bash
# Print some environment variables
echo "Your home directory is: $HOME"
echo "Your username is: $USER"
echo "Your shell path is: $PATH"
```

Output:
```
Your home directory is: /home/yourusername
Your username is: yourusername
Your shell path is: /usr/local/bin:/usr/bin:/bin
```

#### Example 6: Using Command Output as a Variable

You can assign the output of a command to a variable using command substitution `$(command)`:

```bash
#!/bin/bash
# Assign the current date to a variable
CURRENT_DATE=$(date)

# Print the date
echo "Current date and time: $CURRENT_DATE"
```

Output:
```
Current date and time: Mon Oct 3 12:34:56 UTC 2024
```

#### Example 7: Changing Variable Values

Variables can be reassigned at any time:

```bash
#!/bin/bash
# Assign initial value
VAR="Initial Value"

# Print initial value
echo $VAR

# Change the value
VAR="New Value"

# Print new value
echo $VAR
```

Output:
```
Initial Value
New Value
```

### Special Variables in Shell Scripting

Shell scripting also includes some predefined special variables:
- **$0**: The name of the script.
- **$1, $2, ...**: Positional parameters representing the script’s arguments.
- **$#**: The number of arguments passed to the script.
- **$@**: All arguments passed to the script.
- **$?**: The exit status of the last executed command.
- **$$**: The process ID of the current shell.

#### Example 8: Using Positional Parameters

```bash
#!/bin/bash
# Script name is stored in $0
echo "Script name: $0"

# First and second arguments are stored in $1 and $2
echo "First argument: $1"
echo "Second argument: $2"

# Number of arguments passed is stored in $#
echo "Number of arguments: $#"
```

Run the script with two arguments:

```bash
./myscript.sh arg1 arg2
```

Output:
```
Script name: ./myscript.sh
First argument: arg1
Second argument: arg2
Number of arguments: 2
```
