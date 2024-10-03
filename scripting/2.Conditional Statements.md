# Conditional Statements in Shell Scripting

Conditional statements are used in shell scripting to make decisions based on certain conditions. These conditions determine which block of code will be executed. The most common types of conditional statements in shell scripting are:

1. **if-else statement**
2. **if-elif-else statement**
3. **case statement**

Each of these structures allows scripts to evaluate conditions and execute commands based on whether the condition is true or false.

### 1. **if-else Statement**

The basic syntax for an `if-else` statement is:

```bash
if [ condition ]; then
    # Commands to execute if condition is true
else
    # Commands to execute if condition is false
fi
```

#### Example: Simple `if-else` Statement

```bash
#!/bin/bash
# Check if a directory exists

DIR="/home/user"

if [ -d "$DIR" ]; then
    echo "The directory $DIR exists."
else
    echo "The directory $DIR does not exist."
fi
```

In this example, the script checks if a directory exists using `-d` (which checks for directory existence). If the condition is true, it prints a message; otherwise, it prints another message.

### 2. **if-elif-else Statement**

The `if-elif-else` structure allows for multiple conditions to be checked sequentially. The syntax is:

```bash
if [ condition1 ]; then
    # Commands to execute if condition1 is true
elif [ condition2 ]; then
    # Commands to execute if condition2 is true
else
    # Commands to execute if neither condition1 nor condition2 is true
fi
```

#### Example: Checking Multiple Conditions with `if-elif-else`

```bash
#!/bin/bash
# Check the value of a variable

NUM=15

if [ $NUM -lt 10 ]; then
    echo "The number is less than 10."
elif [ $NUM -eq 15 ]; then
    echo "The number is equal to 15."
else
    echo "The number is greater than 10 and not equal to 15."
fi
```

In this example, the script checks whether a number is less than 10, equal to 15, or something else.

### 3. **Nested if Statements**

You can nest `if` statements inside other `if` statements to check multiple conditions in a more complex way.

#### Example: Nested `if` Statements

```bash
#!/bin/bash
# Check the value of a variable and a file

NUM=20
FILE="/tmp/testfile.txt"

if [ $NUM -eq 20 ]; then
    if [ -f "$FILE" ]; then
        echo "The number is 20 and the file exists."
    else
        echo "The number is 20, but the file does not exist."
    fi
else
    echo "The number is not 20."
fi
```

In this case, the script checks if a number equals 20, and within that condition, it also checks whether a file exists.

### 4. **case Statement**

The `case` statement is a more readable and efficient way to handle multiple conditions, especially when there are many options to choose from. It works similarly to the `switch` statement in other programming languages.

The syntax for `case` is:

```bash
case variable in
    pattern1)
        # Commands to execute if variable matches pattern1
        ;;
    pattern2)
        # Commands to execute if variable matches pattern2
        ;;
    *)
        # Default commands if no pattern matches
        ;;
esac
```

#### Example: Using `case` for Multiple Conditions

```bash
#!/bin/bash
# Simple menu using case

echo "Enter your choice: "
echo "1 - Start"
echo "2 - Stop"
echo "3 - Restart"
read CHOICE

case $CHOICE in
    1)
        echo "Starting the service..."
        ;;
    2)
        echo "Stopping the service..."
        ;;
    3)
        echo "Restarting the service..."
        ;;
    *)
        echo "Invalid choice."
        ;;
esac
```

In this example, the script presents a menu and uses `case` to execute different commands based on the user's input.

### 5. **Logical Operators**

You can combine conditions using logical operators:

- **AND (`-a` or `&&`)**: True if both conditions are true.
- **OR (`-o` or `||`)**: True if at least one condition is true.
- **NOT (`!`)**: Inverts the result of a condition.

#### Example: Using Logical Operators

```bash
#!/bin/bash
# Check multiple conditions using AND and OR

AGE=25
CITY="New York"

if [ $AGE -gt 18 ] && [ "$CITY" = "New York" ]; then
    echo "You are older than 18 and live in New York."
else
    echo "Either you're younger than 18 or you don't live in New York."
fi
```

Here, the script checks if the user is older than 18 **and** lives in New York. Both conditions must be true for the first message to be printed.

### Comparison Operators in Conditional Statements

Here are some common comparison operators used in shell scripting:

#### **Numeric Comparison Operators**
- **`-eq`**: Equal to
- **`-ne`**: Not equal to
- **`-lt`**: Less than
- **`-le`**: Less than or equal to
- **`-gt`**: Greater than
- **`-ge`**: Greater than or equal to

#### **String Comparison Operators**
- **`=`**: Equal to
- **`!=`**: Not equal to
- **`-z`**: Checks if the string is empty
- **`-n`**: Checks if the string is not empty

### Example: Numeric and String Comparison

```bash
#!/bin/bash
# Example of numeric and string comparison

NUM1=5
NUM2=10
STRING1="Hello"
STRING2="World"

# Numeric comparison
if [ $NUM1 -lt $NUM2 ]; then
    echo "$NUM1 is less than $NUM2"
fi

# String comparison
if [ "$STRING1" != "$STRING2" ]; then
    echo "$STRING1 is not equal to $STRING2"
fi
```

Output:
```
5 is less than 10
Hello is not equal to World
```
