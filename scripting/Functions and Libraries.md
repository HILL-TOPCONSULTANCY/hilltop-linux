

### Functions:

1. **Simple Function**:

```bash
# Define a function
greet() {
    echo "Hello, world!"
}

# Call the function
greet
```

2. **Function with Parameters**:

```bash
# Define a function with parameters
greet_user() {
    local name="$1"
    echo "Hello, $name!"
}

# Call the function with a parameter
greet_user "John"
```

3. **Returning Values from Functions**:

```bash
# Define a function that returns a value
add_numbers() {
    local result=$(( $1 + $2 ))
    echo "$result"
}

# Call the function and store the result
sum=$(add_numbers 5 3)
echo "Sum: $sum"
```

4. **Using Functions in Conditional Statements**:

```bash
# Define a function
is_even() {
    if (( $1 % 2 == 0 )); then
        echo "true"
    else
        echo "false"
    fi
}

# Use the function in a conditional statement
number=10
if [[ $(is_even $number) == "true" ]]; then
    echo "$number is even."
else
    echo "$number is odd."
fi
```

### Libraries:

Shell scripting doesn't have built-in support for libraries in the same way as other programming languages. However, you can organize your scripts into reusable functions and source them from other scripts to achieve similar functionality. Here's an example:

1. **Library File (`mylib.sh`)**:

```bash
# Define a function in the library file
say_hello() {
    echo "Hello, $1!"
}
```

2. **Script Using the Library**:

```bash
# Source the library file
source mylib.sh

# Call the function from the library
say_hello "John"
```

By sourcing the library file (`source mylib.sh`), the functions defined in the library become available in the script, allowing you to reuse them.

Functions and libraries provide a way to modularize and organize shell scripts, making them more maintainable and reusable. They are particularly useful for defining common tasks and behaviors that can be shared across multiple scripts.