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

### **Variable Naming Rules**  
✔ Start with a letter or `_` (e.g., `var`, `_var`).  
✔ Case-sensitive (`Name` ≠ `name`).  
✔ Avoid spaces: `var="value"` , `var = "value"` ❌.  

---

## **4. Data Types**  
Bash primarily treats data as **strings**, but numbers can be used in arithmetic contexts.  

| **Type**    | **Example**       | **Notes**                     |  
|------------|------------------|------------------------------|  
| **String** | `text="Hello"`   | Default type (no quotes needed for single words). |  
| **Integer** | `num=10`        | Used in arithmetic operations. |  
| **Array**  | `arr=("A" "B")`  | Lists of values (index starts at 0). |  

### **Example: Arithmetic**  
```bash
sum=$((5 + 3))  # $((...)) for math  
echo "5 + 3 = $sum"  
```

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
