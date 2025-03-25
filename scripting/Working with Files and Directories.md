# **Working with Files and Directories – Scripting Tutorial Notes**

## **1. File Operations**

### **Checking File Existence**
```bash
if [ -f "profile.txt" ]; then
    echo "Profile exists"
else
    echo "Profile not found"
fi
```

### **Reading Files**
```bash
# Read entire file
content=$(cat profile.txt)

# Read line by line
while read line; do
    echo "Line: $line"
done < profile.txt
```

### **Writing Files**
```bash
# Overwrite file
echo "Name: John" > profile.txt

# Append to file
echo "Age: 30" >> profile.txt
```

## **2. Directory Operations**

### **Checking Directories**
```bash
if [ -d "profiles" ]; then
    echo "Directory exists"
else
    mkdir profiles
fi
```

### **Listing Files**
```bash
# List all .txt files
for file in *.txt; do
    echo "Found file: $file"
done
```

## **3. Practical Examples**

### **Example 1: Backup Profile**
```bash
function backup_profile() {
    local profile="profile.txt"
    local backup_dir="backups"
    
    mkdir -p "$backup_dir"
    cp "$profile" "$backup_dir/profile_$(date +%Y%m%d).txt"
}

backup_profile
```

### **Example 2: Clean Old Files**
```bash
function clean_old_profiles() {
    find backups/ -name "*.txt" -mtime +30 -delete
}

clean_old_profiles
```
