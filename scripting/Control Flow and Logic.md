# Control Flow and Logic
Control flow allows scripts to make decisions using conditions.

## **1. Conditional Statements**

### **Basic `if` Statement**
```bash
sex="male"
if [ "$sex" = "male" ]; then
    echo "Gender: Male"
fi
```
*Output: "Gender: Male"*

### **`if-else` Statement**
```bash
name="john"
if [ "$name" = "john" ]; then
    echo "Hello John"
else
    echo "You're not John"
fi
```
*Output: "Hello John"*

### **`elif` Statement**
```bash
age=30
if [ "$age" -lt 18 ]; then
    echo "Minor"
elif [ "$age" -ge 18 ] && [ "$age" -lt 65 ]; then
    echo "Adult"
else
    echo "Senior"
fi
```
*Output: "Adult"*

---

## **2. Loops**

### **`for` Loop**
```bash
for name in "john" "mary" "david"; do
    echo "Processing $name"
done
```
*Output: Processes each name*

### **`while` Loop**
```bash
counter=1
while [ "$counter" -le 3 ]; do
    echo "Attempt $counter"
    ((counter++))
done
```
*Output: Counts from 1 to 3*

### **`until` Loop**
```bash
age=25
until [ "$age" -ge 30 ]; do
    echo "Current age: $age"
    ((age++))
done
```
*Output: Shows ages 25-29*

---

## **3. `case` Statement**
```bash
sex="male"
case "$sex" in
    "male")
        echo "Title: Mr."
        ;;
    "female")
        echo "Title: Ms."
        ;;
    *)
        echo "Title: Mx."
        ;;
esac
```
*Output: "Title: Mr."*

---

## **4. Loop Control**

### **`break` Example**
```bash
for i in {1..5}; do
    if [ "$i" -eq 3 ]; then
        break
    fi
    echo "Number $i"
done
```
*Output: Shows 1, 2*

### **`continue` Example**
```bash
for i in {1..5}; do
    if [ "$i" -eq 3 ]; then
        continue
    fi
    echo "Number $i"
done
```
*Output: Shows 1, 2, 4, 5*

---

## **5. Complete Example: Profile Checker**
```bash
#!/bin/bash

name="john"
sex="male"
age=30

echo "Profile Verification:"

# Name check
if [ "$name" = "john" ]; then
    echo "- Name verified"
else
    echo "- Name mismatch"
fi

# Age classification
if [ "$age" -lt 13 ]; then
    group="Child"
elif [ "$age" -lt 20 ]; then
    group="Teen"
elif [ "$age" -lt 65 ]; then
    group="Adult"
else
    group="Senior"
fi
echo "- Age group: $group"

# Gender title
case "$sex" in
    "male") title="Mr." ;;
    "female") title="Ms." ;;
    *) title="Mx." ;;
esac
echo "- Formal title: $title"

# Countdown
echo "Counting down:"
counter=3
while [ "$counter" -gt 0 ]; do
    echo "$counter..."
    ((counter--))
done
echo "Profile complete!"
```

---
