# **Input and Output (I/O) Handling – Scripting Tutorial Notes**

## **1. Basic I/O Operations**

### **Output Methods**
```bash
echo "Hello, John (age 30)"          # Basic output
printf "Name: %s\nAge: %d\n" John 30 # Formatted output
```

### **Input Methods**
```bash
read -p "Enter your name: " name
read -p "Enter your age: " age
```

## **2. Advanced I/O Features**

### **Reading Files**
```bash
while read line; do
    echo "Processing: $line"
done < data.txt
```

### **Writing to Files**
```bash
echo "Name: John" > profile.txt       # Overwrite
echo "Age: 30" >> profile.txt        # Append
```

### **Here Documents**
```bash
cat <<EOF > profile.txt
Name: John
Age: 30
Gender: male
EOF
```

## **3. Practical Examples**

### **Example 1: Profile Creator**
```bash
#!/bin/bash

read -p "Enter name: " name
read -p "Enter age: " age
read -p "Enter gender (male/female): " gender

cat <<PROFILE > profile.txt
=== Personal Profile ===
Name: $name
Age: $age
Gender: $gender
PROFILE

echo "Profile created successfully!"
```

### **Example 2: Interactive Menu**
```bash
#!/bin/bash

while true; do
    echo "1. View profile"
    echo "2. Edit profile"
    echo "3. Exit"
    read -p "Choose option: " choice

    case $choice in
        1) cat profile.txt ;;
        2) nano profile.txt ;;
        3) break ;;
        *) echo "Invalid option" ;;
    esac
done
```

## **4. Error Handling**

### **Redirecting Errors**
```bash
command_that_might_fail 2> error.log
```

### **Checking Command Success**
```bash
if ! grep "John" profile.txt; then
    echo "John not found in profile" >&2
fi
```
# **String and Text Manipulation – Scripting Tutorial Notes**

## **1. Basic String Operations**

### **Variable Assignment**
```bash
name="John"
age="30"
sex="male"
```

### **Concatenation**
```bash
profile="$name, $age years old, $sex"
echo "$profile"  # Output: John, 30 years old, male
```

### **Length Calculation**
```bash
echo "Name length: ${#name}"  # Output: 4
```

## **2. Substring Operations**

### **Extraction**
```bash
fullname="John_Doe"
firstname=${fullname:0:4}  # Start at 0, length 4
echo "$firstname"  # Output: John
```

### **Replacement**
```bash
message="Hello, John"
new_message=${message/John/Mary}
echo "$new_message"  # Output: Hello, Mary
```

## **3. Text Processing Tools**

### **grep (Search)**
```bash
# Search for lines containing "John"
grep "John" profiles.txt
```

### **sed (Stream Editor)**
```bash
# Replace "male" with "female"
sed 's/male/female/g' profile.txt
```

### **awk (Pattern Scanning)**
```bash
# Print first column of data
awk '{print $1}' data.txt
```

## **4. Practical Examples**

### **Example 1: Profile Formatter**
```bash
function format_profile() {
    local name=$1
    local age=$2
    local sex=$3
    
    # Convert to uppercase
    name_upper=${name^^}
    sex_upper=${sex^^}
    
    # Format string
    printf "NAME: %-10s AGE: %-3s GENDER: %-6s\n" \
           "$name_upper" "$age" "$sex_upper"
}

format_profile "john" "30" "male"
```
*Output:*
```
NAME: JOHN       AGE: 30  GENDER: MALE
```

### **Example 2: Input Validation**
```bash
read -p "Enter username (alphanumeric only): " username
if [[ "$username" =~ ^[a-zA-Z0-9]+$ ]]; then
    echo "Valid username"
else
    echo "Invalid characters detected"
fi
```

## **5. Advanced Techniques**

### **Regular Expressions**
```bash
if [[ "John30" =~ ^[A-Z][a-z]+[0-9]+$ ]]; then
    echo "Pattern matched: Name followed by numbers"
fi
```

### **Multiline Strings**
```bash
bio=$(cat <<END
Name: John
Age: 30
Gender: male
END
)
echo "$bio"
```
