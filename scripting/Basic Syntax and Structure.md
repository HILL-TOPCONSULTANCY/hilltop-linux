# **Basic Syntax and Structure**  

## **1. Script File Structure**  
A script typically follows this structure:  

```bash
#!/bin/bash           # Shebang (interpreter directive)
# This is a comment   # Comments (ignored during execution)

# Variables and code here
echo "Hello, World!"  # Command to execute
```

### **Key Components**  
✔ **Shebang (`#!/bin/bash`)** → Specifies the interpreter.  
✔ **Comments (`# ...`)** → Explanatory notes (ignored by the interpreter).  
✔ **Commands** → Actual instructions to execute.  

---

## **2. Comments**  
- Used for documentation and readability.  
- Ignored by the interpreter.  

### **Single-Line Comments**  
```bash
# This is a comment  
echo "Hello"  # Inline comment  
```

### **Multi-Line Comments (Bash Hack)**  
```bash
: '
This is a
multi-line comment
'
```

---

## **3. Variables**  
- Store data for later use.  
- No spaces around `=` in assignment.  

### **Defining Variables**  
```bash
name="Alice"         # String  
age=25              # Integer  
files=$(ls)         # Command output  
```

### **Using Variables**  
```bash
echo "$name is $age years old."  
echo "Files: $files"  
```

# **Variables with Multiple Keys (Arrays) and Naming Rules**

## **1. Arrays (Variables with Multiple Keys)**

### **Defining an Array**
To call out the value "John" (the first element) from your array in an `echo` command, you would use:

```bash
echo "${person[0]}"
```

### Explanation:
1. `${person}` refers to the array variable
2. `[0]` accesses the first element (array indexes start at 0 in Bash)
3. The quotes `""` ensure proper handling of spaces/special characters

### Complete Example:
```bash
#!/bin/bash

# Declare the array
person=("John" 30 "male" "john@example.com")

# Access and display the name
echo "First Name: ${person[0]}" 

# You can also store it in a new variable
name="${person[0]}"
echo "The name is $name"  
```

### Accessing Other Elements:
- `${person[1]}` → 30 (age)
- `${person[2]}` → "male" (gender) 
- `${person[3]}` → "john@example.com" (email)


## **2. Variable Naming Rules**

### **Valid Names**
```bash
firstName="John"     # CamelCase
last_name="Doe"      # Underscores
_age=30              # Starts with underscore
MAX_LIMIT=100        # All caps for constants
```

### **Invalid Names**
```bash
3years=30            # Starts with number ❌
first-name="John"    # Hyphens ❌
user name="John"     # Spaces ❌
```

### **Best Practices**
✔ Use descriptive names (`user_age` vs `ua`)  
✔ Be consistent with case (`firstName` vs `first_name`)  
✔ UPPERCASE for constants (`MAX_USERS=100`)  
✔ Avoid special characters except `_`  

---

Here's the data types table with expanded definitions and examples for each type:

| **Type**    | **Definition** | **Example**       | **Notes**                     |  
|------------|--------------|------------------|------------------------------|
| **String** | Textual data, the default type in Bash | `text="Hello"`<br>`path=/home/user` | - Quotes optional for simple words<br>- Use `${#var}` for length<br>- Supports substring extraction |
| **Integer** | Whole numbers for arithmetic | `num=10`<br>`sum=$((5+3))` | - No floating-point by default<br>- Use `$(( ))` for math<br>`-eq`, `-lt` for comparisons |
| **Array** | Indexed list of values | `arr=("A" "B")`<br>`echo ${arr[0]}` | - Zero-based indexing<br>- `${arr[@]}` for all elements<br>- Supports sparse arrays |

### **Expanded Examples:**

**String:**
```bash
name="John Doe"           # Simple string
echo "Length: ${#name}"   # Shows 8 (includes space)
echo "First 4 chars: ${name:0:4}"  # "John"
```

**Integer:**
```bash
count=5
((count++))               # Increment to 6
if (( count > 3 )); then  # Arithmetic comparison
   echo "Over 3"
fi
```

**Array:**
```bash
files=("report.txt" "data.csv")
files+=("notes.doc")      # Append new element
echo "First file: ${files[0]}"  # "report.txt"
```

**Key Differences:**
1. **Strings**  
   - Default type for all variables  
   - `"${var}"` syntax enables advanced operations  
   - No type enforcement (all variables are strings at core)

2. **Integers**  
   - Become active only in arithmetic contexts  
   - `let` or `$(( ))` required for math  
   - Octal interpretation if leading zero (`08` causes error)

3. **Arrays**  
   - Indexed (`arr[0]`) or associative (`arr["key"]`)  
   - Require special syntax for access `${arr[@]}`  
   - `+=` operator for appending elements  

---

## **5. Operators**  
### **Arithmetic Operators**  
| Operator | Example       | Result           |  
|----------|--------------|------------------|  
| `+`      | `$((a + b))` | Addition         |  
| `-`      | `$((a - b))` | Subtraction      |  
| `*`      | `$((a * b))` | Multiplication   |  
| `/`      | `$((a / b))` | Division         |  

### **Comparison Operators**  
| Operator | Example           | Checks                  |  
|----------|------------------|-------------------------|  
| `-eq`    | `[ "$a" -eq 5 ]` | Equal                   |  
| `-ne`    | `[ "$a" -ne 5 ]` | Not equal               |  
| `-gt`    | `[ "$a" -gt 5 ]` | Greater than            |  

### **String Operators**  
```bash
[ "$str1" == "$str2" ]  # Equality check  
[ -z "$str" ]           # Checks if empty  
```

---

## **6. Basic Input/Output**  
### **Output (`echo`, `printf`)**  
```bash
echo "Hello"                  # Simple output  
printf "Name: %s\n" "$name"   # Formatted output (like C)  
```

### **Input (`read`)**  
```bash
echo "What's your name?"  
read name  
echo "Hello, $name!"  
```

---

## **7. Example Script**  
```bash
#!/bin/bash  
# Ask user for input and calculate age  
echo "Enter your birth year:"  
read birth_year  
current_year=$(date +%Y)  
age=$((current_year - birth_year))  
echo "You are $age years old!"  
```

---
