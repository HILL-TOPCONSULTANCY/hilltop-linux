# **Functions and Modularity – Scripting Tutorial Notes**

## **1. Introduction to Functions**
Functions are reusable blocks of code that perform specific tasks.

### **Why Use Functions?**
- **Reusability**: Write once, use many times
- **Organization**: Break complex scripts into manageable parts
- **Maintenance**: Update in one place
- **Readability**: Self-documenting through descriptive names

## **2. Function Syntax**

### **Basic Function Definition**
```bash
function greet() {
    echo "Hello, $1!"
}
```

### **Alternative Syntax**
```bash
greet() {
    echo "Hello, $1!"
}
```

## **3. Function Parameters**
Parameters are passed as positional arguments (`$1`, `$2`, etc.)

**Example: Personal Profile Function**
```bash
function describe_person() {
    echo "Name: $1"
    echo "Age: $2"
    echo "Gender: $3"
}

describe_person "John" 30 "male"
```

*Output:*
```
Name: John
Age: 30
Gender: male
```

## **4. Return Values**
Functions can return:
- Exit status (0 for success, non-zero for failure)
- Output via echo (captured with command substitution)

**Example: Age Check Function**
```bash
function is_adult() {
    if [ "$1" -ge 18 ]; then
        return 0  # Success (true)
    else
        return 1  # Failure (false)
    fi
}

is_adult 30 && echo "Adult" || echo "Minor"
```

## **5. Variable Scope**
- **Global variables**: Accessible everywhere
- **Local variables**: Restricted to function (use `local` keyword)

**Example:**
```bash
function set_name() {
    local first_name=$1
    last_name=$2  # Global
}

set_name "John" "Doe"
echo "$first_name"  # Empty (local)
echo "$last_name"   # "Doe"
```

## **6. Practical Examples**

### **Example 1: Profile Creator**
```bash
function create_profile() {
    local name=$1
    local age=$2
    local sex=$3
    
    echo "=== Profile ==="
    echo "Name: $name"
    echo "Age: $age"
    
    case $sex in
        male) echo "Title: Mr." ;;
        female) echo "Title: Ms." ;;
        *) echo "Title: Mx." ;;
    esac
}

create_profile "John" 30 "male"
```

### **Example 2: Age Calculator**
```bash
function calculate_birth_year() {
    local current_year=$(date +%Y)
    local birth_year=$((current_year - $1))
    echo "You were born in $birth_year"
}

calculate_birth_year 30
```

## **7. Modular Script Design**
Best practices for organizing scripts:

1. **Separate functions into libraries**
   ```bash
   # profile_functions.sh
   function create_profile() {
       # implementation
   }
   ```

2. **Source external files**
   ```bash
   source profile_functions.sh
   create_profile "John" 30 "male"
   ```

3. **Use main() function**
   ```bash
   function main() {
       create_profile "John" 30 "male"
       calculate_birth_year 30
   }
   
   main "$@"
   ```
