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
