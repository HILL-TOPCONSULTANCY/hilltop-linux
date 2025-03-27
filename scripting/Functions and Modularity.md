# **Functions and Modularity in Bash Scripting**

## **1. Introduction to Functions**
Functions are essential building blocks in Bash scripting that allow you to:
- Organize code into logical units
- Avoid repetition through reusability
- Simplify complex scripts
- Improve maintainability

### **Key Benefits**
```bash
# Without functions - repetitive code
echo "Processing user John..."
echo "Age: 30"
echo "Gender: male"

echo "Processing user Mary..."
echo "Age: 28"
echo "Gender: female"

# With functions - clean and reusable
process_user "John" 30 "male"
process_user "Mary" 28 "female"
```

## **2. Function Declaration Syntax**
Bash provides two equivalent syntaxes for function definition:

### **Explicit Function Keyword**
```bash
function greet_user {
    # Function body
    echo "Hello, $1!"
}
```

### **Compact Syntax**
```bash
greet_user() {
    # Function body  
    echo "Hello, $1!"
}
```

*Best Practice:* Use the explicit `function` keyword for better readability in complex scripts.

## **3. Function Parameters and Arguments**
Functions receive arguments through positional parameters:

```bash
function create_user_profile {
    # $1 = name, $2 = age, $3 = gender
    local username=$1
    local userage=$2
    local usergender=$3
    
    echo "=== USER PROFILE ==="
    echo "Name:   $username"
    echo "Age:    $userage"
    echo "Gender: $usergender"
}

# Calling the function with arguments
create_user_profile "John" 30 "male"
```

*Important Notes:*
- Parameters are positional (`$1`, `$2`, etc.)
- Always validate input parameters
- Use descriptive parameter names in comments

## **4. Return Values and Status Codes**
Bash functions can communicate results in two ways:

### **Exit Status (0 for success)**
```bash
function is_adult {
    if [ "$1" -ge 18 ]; then
        return 0  # Success = adult
    else
        return 1  # Failure = minor
    fi
}

# Usage with conditional
if is_adult 25; then
    echo "Access granted"
else
    echo "Access denied"
fi
```

### **Output Capture**
```bash
function calculate_bmi {
    local weight=$1
    local height=$2
    local bmi=$(echo "scale=2; $weight / ($height * $height)" | bc)
    echo "$bmi"  # Output the result
}

# Capture function output
result=$(calculate_bmi 70 1.75)
echo "Your BMI is: $result"
```

## **5. Variable Scope Control**
Proper scope management prevents bugs:

```bash
function process_data {
    local input_file=$1  # Local variable
    output_file="result.txt"  # Global variable
    
    # Process data here
    grep "error" "$input_file" > "$output_file"
}

# Call function
process_data "system.log"

# $input_file is undefined here
# $output_file is available
```

*Key Points:*
- Always declare function-specific variables as `local`
- Global variables should be clearly documented
- Avoid modifying global state when possible

## **6. Comprehensive Example: User Management System**

```bash
#!/bin/bash

# Import library (would normally be in separate file)
source user_functions.sh

# Main program flow
function main {
    # Initialize variables
    local default_age=18
    local admin_users=("root" "admin")
    
    # Get user input
    echo "=== User Registration ==="
    read -p "Enter username: " username
    read -p "Enter age [${default_age}]: " userage
    userage=${userage:-$default_age}  # Use default if empty
    
    # Validate input
    if ! validate_username "$username"; then
        echo "Error: Invalid username" >&2
        exit 1
    fi
    
    # Create profile
    create_user_profile "$username" "$userage"
    
    # Special handling for admins
    if is_admin "$username" "${admin_users[@]}"; then
        grant_admin_privileges "$username"
    fi
    
    # Generate report
    generate_registration_report "$username"
}

# Execute main function
main "$@"
```

## **7. Modular Design Best Practices**

### **File Organization**
```
/my_script/
├── main.sh             # Entry point
├── libs/
│   ├── user_functions.sh  # User-related functions
│   ├── log_functions.sh   # Logging functions
│   └── config.sh       # Configuration settings
└── utils/
    └── helpers.sh      # Utility functions
```

### **Function Library Example (user_functions.sh)**
```bash
#!/bin/bash

# Validate username meets requirements
# Returns 0 if valid, 1 otherwise
function validate_username {
    local username=$1
    local min_length=4
    
    # Check minimum length
    if [ ${#username} -lt $min_length ]; then
        return 1
    fi
    
    # Check alphanumeric
    if [[ ! "$username" =~ ^[a-zA-Z0-9_]+$ ]]; then
        return 1
    fi
    
    return 0
}

# Create detailed user profile
function create_user_profile {
    local username=$1
    local age=$2
    
    cat <<PROFILE
=== User Profile ===
Username: $username
Age:      $age
Created:  $(date)
PROFILE
}
```

## **8. Advanced Function Techniques**

### **Array Parameters**
```bash
function process_items {
    local items=("$@")  # Capture all arguments as array
    
    for item in "${items[@]}"; do
        echo "Processing: $item"
    done
}

# Call with array
my_items=("apple" "banana" "cherry")
process_items "${my_items[@]}"
```

### **Function References**
```bash
function apply_operation {
    local operation=$1
    local value=$2
    
    # Call the referenced function
    $operation "$value"
}

function double {
    echo $(( $1 * 2 ))
}

apply_operation "double" 21  # Returns 42
```

## **9. Debugging and Error Handling**

### **Debug Mode**
```bash
function complex_calculation {
    set -x  # Enable debug
    # Complex operations here
    set +x  # Disable debug
}
```

### **Error Handling**
```bash
function critical_operation {
    if ! perform_operation; then
        echo "Operation failed" >&2
        return 1
    fi
    
    # Cleanup on success
    cleanup_resources
    return 0
}
```

## **10. Performance Considerations**

### **Minimize Subshells**
```bash
# Slow - creates subshell
result=$(process_data)

# Faster - use variables
process_data
result=$RETURN_VALUE
```

### **Function Libraries**
```bash
# Instead of:
source lib1.sh
source lib2.sh

# Use:
for lib in libs/*.sh; do
    source "$lib"
done
```
