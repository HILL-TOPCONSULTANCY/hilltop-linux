Sure, let's explore some additional use cases for conditional statements (if/else) and loops in shell scripting:

### Conditional Statements (if/else):

1. **Checking File Existence**:

```bash
if [ -f "file.txt" ]; then
    echo "File exists."
else
    echo "File does not exist."
fi
```

2. **Checking Command Exit Status**:

```bash
if grep -q "pattern" "file.txt"; then
    echo "Pattern found."
else
    echo "Pattern not found."
fi
```

3. **Checking Variable Equality**:

```bash
color="blue"
if [ "$color" = "blue" ]; then
    echo "The color is blue."
else
    echo "The color is not blue."
fi
```

4. **Nested if/else Statements**:

```bash
grade=80
if [ "$grade" -ge 90 ]; then
    echo "Grade: A"
elif [ "$grade" -ge 80 ]; then
    echo "Grade: B"
else
    echo "Grade: C"
fi
```

### Loops:

1. **For Loop - Iterate over Array**:

```bash
fruits=("Apple" "Banana" "Orange")
for fruit in "${fruits[@]}"; do
    echo "Fruit: $fruit"
done
```

2. **For Loop - Iterate over Files in Directory**:

```bash
for file in *.txt; do
    echo "Processing file: $file"
done
```

3. **While Loop - Read Lines from File**:

```bash
while IFS= read -r line; do
    echo "Line: $line"
done < "file.txt"
```

4. **While Loop - Counting Down**:

```bash
counter=5
while [ "$counter" -gt 0 ]; do
    echo "Countdown: $counter"
    ((counter--))
done
```

5. **Until Loop - Repeat Until Condition is True**:

```bash
counter=0
until [ "$counter" -eq 5 ]; do
    echo "Counter: $counter"
    ((counter++))
done
```

These examples demonstrate the versatility of conditional statements (if/else) and various types of loops (for, while, until) in shell scripting. They can be used for a wide range of tasks, including file manipulation, data processing, and control flow management.


### Conditional Statements (if/else):

1. **Checking Directory Existence**:

```bash
if [ -d "directory" ]; then
    echo "Directory exists."
else
    echo "Directory does not exist."
fi
```

2. **Checking if a Variable is Empty**:

```bash
name=""
if [ -z "$name" ]; then
    echo "Name is empty."
else
    echo "Name is not empty."
fi
```

3. **Checking String Length**:

```bash
password="password123"
if [ ${#password} -ge 8 ]; then
    echo "Password is strong."
else
    echo "Password is weak."
fi
```

4. **Case Statement**:

```bash
fruit="apple"
case "$fruit" in
    "apple")
        echo "It's an apple." ;;
    "banana")
        echo "It's a banana." ;;
    *)
        echo "Unknown fruit." ;;
esac
```

### Loops:

6. **For Loop - Generate Number Sequence**:

```bash
for i in {1..5}; do
    echo "Number: $i"
done
```

7. **For Loop - Iterate over Command Output**:

```bash
for user in $(cat users.txt); do
    echo "Processing user: $user"
done
```

8. **While Loop - Infinite Loop**:

```bash
counter=1
while true; do
    echo "Iteration: $counter"
    ((counter++))
    sleep 1
done
```

9. **Until Loop - Process Until File Exists**:

```bash
until [ -f "file.txt" ]; do
    echo "Waiting for file..."
    sleep 5
done
echo "File found!"
```

10. **Nested Loops**:

```bash
for ((i=1; i<=3; i++)); do
    echo "Outer Loop Iteration: $i"
    for ((j=1; j<=2; j++)); do
        echo "    Inner Loop Iteration: $j"
    done
done
```

These examples demonstrate additional ways to use conditional statements and loops in shell scripting for various tasks, such as data processing, control flow management, and iteration over sequences or command output.