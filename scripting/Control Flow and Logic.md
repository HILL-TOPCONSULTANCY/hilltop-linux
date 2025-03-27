# **Control Flow and Logic in Bash Scripting**

## **1. Conditional Statements**

### **Basic `if` Statement**
**Condition:** Checks if the variable `sex` equals "male"
```bash
sex="male"
if [ "$sex" = "male" ]; then
    echo "Gender: Male"  # Executes when condition is true
fi
```
*Output:*  
`Gender: Male`

### **`if-else` Statement**
**Condition:** Checks if the variable `name` equals "john"
```bash
name="john"
if [ "$name" = "john" ]; then
    echo "Hello John"  # Executes if true
else
    echo "You're not John"  # Executes if false
fi
```
*Output:*  
`Hello John`

### **`elif` Statement**
**Conditions:** 
1. First checks if age is less than 18
2. Then checks if between 18-65
3. Finally defaults to senior
```bash
age=30
if [ "$age" -lt 18 ]; then
    echo "Minor"
elif [ "$age" -ge 18 ] && [ "$age" -lt 65 ]; then
    echo "Adult"  # This condition is true for age=30
else
    echo "Senior"
fi
```
*Output:*  
`Adult`

---

## **2. Looping Structures**

### **`for` Loop**
**Condition:** Iterates through each item in the list
```bash
for name in "john" "mary" "david"; do
    echo "Processing $name"  # Executes for each name
done
```
*Output:*  
```
Processing john  
Processing mary  
Processing david
```

### **`while` Loop**
**Condition:** Continues while counter is less than or equal to 3
```bash
counter=1
while [ "$counter" -le 3 ]; do  # -le = less than or equal
    echo "Attempt $counter"
    ((counter++))  # Increment counter
done
```
*Output:*  
```
Attempt 1  
Attempt 2  
Attempt 3
```

### **`until` Loop**
**Condition:** Runs until age reaches 30
```bash
age=25
until [ "$age" -ge 30 ]; do  # -ge = greater than or equal
    echo "Current age: $age"
    ((age++))  # Increment age
done
```
*Output:*  
```
Current age: 25  
Current age: 26  
Current age: 27  
Current age: 28  
Current age: 29
```

---

## **3. Case Statements**

### **`case` Statement**
**Conditions:** Matches the value of `sex` against patterns
```bash
sex="male"
case "$sex" in
    "male")
        echo "Title: Mr."  # Matches this pattern
        ;;
    "female")
        echo "Title: Ms."
        ;;
    *)
        echo "Title: Mx."  # Default case
        ;;
esac
```
*Output:*  
`Title: Mr.`

---

## **4. Loop Control**

### **`break` Statement**
**Condition:** Breaks loop when i equals 3
```bash
for i in {1..5}; do
    if [ "$i" -eq 3 ]; then  # -eq = equals
        break  # Exit loop immediately
    fi
    echo "Number $i"
done
```
*Output:*  
```
Number 1  
Number 2
```

### **`continue` Statement**
**Condition:** Skips iteration when i equals 3
```bash
for i in {1..5}; do
    if [ "$i" -eq 3 ]; then
        continue  # Skip to next iteration
    fi
    echo "Number $i"
done
```
*Output:*  
```
Number 1  
Number 2  
Number 4  
Number 5
```

---

### **Key Conditions Explained:**
1. **String Comparison**: `[ "$var" = "value" ]` checks equality
2. **Numerical Comparisons**:
   - `-lt`: less than
   - `-le`: less than or equal
   - `-gt`: greater than
   - `-ge`: greater than or equal
   - `-eq`: equals
3. **Case Patterns**: Exact string matching with fallback
4. **Loop Conditions**: Continue until condition becomes false
