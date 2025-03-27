# **Comprehensive Guide to I/O Handling & String Manipulation**

## **Input/Output Handling**

### **1. Basic I/O Operations**
Bash provides several ways to handle input and output operations.

#### **Output Methods**
```bash
# Simple output with echo (automatically adds newline)
echo "Displaying profile for John, age 30"

# Formatted output with printf (like C's printf)
printf "Name: %-10s | Age: %3d | Gender: %-6s\n" "John" 30 "male"
```
*Explanation:*
- `echo` is simpler but has limited formatting
- `printf` allows precise formatting with format specifiers (`%s` for strings, `%d` for integers)
- `%-10s` left-aligns a string in 10-character width
- `%3d` formats an integer in 3-digit width

#### **Input Methods**
```bash
# Basic read with prompt
read -p "Enter full name (first last): " first_name last_name

# Silent read for passwords
read -s -p "Enter password: " password
echo  # Needed because -s suppresses newline

# Reading multiple values
echo "Enter your address details:"
read -p "Street: " street
read -p "City: " city
read -p "ZIP: " zip
```
*Explanation:*
- `-p` displays a prompt
- Multiple variables can capture space-separated input
- `-s` hides input (for sensitive data)

### **2. File Operations**
Working with files is fundamental in scripting.

#### **Reading Files**
```bash
# Read entire file into variable
config_content=$(<config.ini)

# Process CSV file line by line
while IFS=',' read -r name age gender; do
    echo "Processing $name ($gender), age $age"
done < employees.csv
```
*Explanation:*
- `$(<file)` is faster than `cat` for reading files
- `IFS=','` sets comma as field separator for CSV
- `-r` prevents backslash interpretation

#### **Writing Files**
```bash
# Overwrite existing file
echo "User Report $(date)" > report.txt

# Append to file
{
    echo "=== User Details ==="
    printf "Name: %s\n" "$name"
    printf "Age: %d\n" "$age"
} >> report.txt
```
*Explanation:*
- `>` truncates existing files
- `>>` appends without truncation
- Braces `{}` group multiple commands

#### **Here Documents**
```bash
# Generate configuration file
cat <<CONFIG > app.conf
[Database]
host = db.example.com
user = $db_user
password = $db_pass
timeout = 300
CONFIG
```
*Explanation:*
- `<<DELIMITER` starts a here-doc
- Variables are expanded unless quoted (`<<'CONFIG'`)
- Maintains formatting and indentation

### **3. Advanced I/O Patterns**

#### **Process Substitution**
```bash
# Compare two sorted lists
diff <(sort file1.txt) <(sort file2.txt)
```

#### **Named Pipes**
```bash
mkfifo my_pipe
processor < my_pipe &  # Run in background
data_generator > my_pipe
```

## **String Manipulation**

### **1. Basic String Operations**

#### **Variable Assignment**
```bash
first_name="John"
last_name='Doe'
full_name="$first_name $last_name"  # "John Doe"
```

#### **Concatenation**
```bash
# Simple concatenation
greeting="Hello, $full_name"

# With command substitution
system_info="$(uname -s) $(uname -r)"

# Multi-line strings
address="123 Main St
Anytown, CA 12345"
```

#### **Length and Status**
```bash
# String length
echo "${#full_name}"  # 8 (John Doe)

# Check if empty
if [ -z "$var" ]; then
    echo "Variable is empty"
fi
```

### **2. Substring Operations**

#### **Extraction**
```bash
# Basic substring (offset, length)
file="document.2023.pdf"
year=${file:8:4}  # "2023"

# Negative offset (from end)
extension=${file: -4}  # ".pdf"
```

#### **Replacement**
```bash
# First match replacement
message="Hello John, John is late"
echo "${message/John/Mary}"  # "Hello Mary, John is late"

# Global replacement
echo "${message//John/Mary}"  # "Hello Mary, Mary is late"

# Prefix/suffix replacement
path="/usr/local/bin"
echo "${path#/usr}"  # "/local/bin" (remove shortest prefix)
echo "${path##/usr}" # "/local/bin" (remove longest prefix)
```

### **3. Text Processing Tools**

#### **grep (Pattern Searching)**
```bash
# Basic search
grep "error" /var/log/syslog

# Case insensitive with line numbers
grep -in "warning" application.log

# Inverse match (lines NOT containing)
grep -v "DEBUG" logfile
```

#### **sed (Stream Editor)**
```bash
# In-place file editing
sed -i 's/old/new/g' file.txt

# Delete lines matching pattern
sed '/pattern/d' input.txt

# Multiple commands
sed -e 's/foo/bar/' -e '/baz/d' file
```

#### **awk (Data Extraction)**
```bash
# Print specific columns
awk '{print $1,$3}' data.csv

# Conditional processing
awk '$3 > 30 {print $1, "is over 30"}' employees.txt

# Field separator
awk -F: '{print $1}' /etc/passwd
```

### **4. Practical Applications**

#### **User Profile System**
```bash
#!/bin/bash

# Initialize profile
declare -A profile=(
    ["name"]=""
    ["age"]=""
    ["email"]=""
)

# Data collection
read -p "Enter full name: " profile["name"]
while [[ ! "${profile["age"]}" =~ ^[0-9]+$ ]]; do
    read -p "Enter age: " profile["age"]
done
read -p "Enter email: " profile["email"]

# Validation
if [[ ! "${profile["email"]}" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ ]]; then
    echo "Invalid email format" >&2
    exit 1
fi

# Generate report
{
    echo "=== USER PROFILE ==="
    for key in "${!profile[@]}"; do
        printf "%-10s: %s\n" "${key^}" "${profile[$key]}"
    done
    echo "Generated: $(date)"
} > user_profile.txt

echo "Profile saved successfully"
```

#### **Log File Analyzer**
```bash
#!/bin/bash

# Analyze Apache log
log_file="/var/log/apache2/access.log"

# Count 404 errors
error_count=$(grep -c ' 404 ' "$log_file")

# Extract top 5 IPs
echo "Top 5 IP addresses:"
awk '{print $1}' "$log_file" | sort | uniq -c | sort -nr | head -5

# Generate summary
summary="Log Analysis Report
=================
Total 404 errors: $error_count
Report generated: $(date)"

echo "$summary" > log_analysis.txt
```

## **Best Practices**

1. **Always quote variables** to prevent word splitting
   ```bash
   # Good
   grep "$pattern" "$file"

   # Bad (may break with spaces)
   grep $pattern $file
   ```

2. **Use `printf` for complex formatting**
   ```bash
   printf "%-20s %10d\n" "Total users:" 42
   ```

3. **Validate input data**
   ```bash
   while [[ ! "$age" =~ ^[0-9]+$ ]]; do
       read -p "Enter valid age: " age
   done
   ```

4. **Handle errors gracefully**
   ```bash
   if ! cp "$source" "$dest"; then
       echo "Copy failed!" >&2
       exit 1
   fi
   ```

5. **Comment complex operations**
   ```bash
   # Extract year from YYYY-MM-DD format
   year=${date:0:4}
   ```
