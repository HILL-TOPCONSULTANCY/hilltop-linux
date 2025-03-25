# **1. What is Scripting?**  
- **Scripting** refers to writing small programs (scripts) to automate tasks.  
- Scripts are usually **interpreted** (executed line-by-line) rather than compiled.  
- Used for automation, system administration, data processing, and more.  

### **Key Characteristics of Scripting:**  
✔ **Quick to write & execute** (no compilation needed).  
✔ **Lightweight** compared to full-fledged programming.  
✔ **Often used for automation** (file handling, backups, deployments).  

---

## **2. Scripting vs. Programming**  
| **Feature**       | **Scripting**               | **Programming**               |  
|------------------|---------------------------|------------------------------|  
| **Execution**    | Interpreted (directly run) | Compiled (converted to machine code) |  
| **Speed**        | Slower (runtime parsing)   | Faster (optimized binaries)   |  
| **Use Case**     | Automation, small tasks    | Large-scale applications      |  
| **Examples**     | Bash, Python, PowerShell   | C++, Java, Rust              |  

---

## **3. Common Scripting Languages**  
| **Language**   | **Primary Use Case**               | **Example Command** |  
|--------------|----------------------------------|-------------------|  
| **Bash**     | Linux/Unix automation            | `echo "Hello"`    |  
| **Python**   | Cross-platform scripting, data   | `print("Hello")`  |  
| **PowerShell** | Windows automation             | `Write-Host "Hello"` |  
| **JavaScript** | Web automation (Node.js)      | `console.log("Hello")` |  

---

## **4. Why Use Scripting?**  
 **Automate repetitive tasks** (file backups, log cleaning).  
**Quick prototyping** (test ideas without full development).  
**System administration** (manage servers, users, networks).  
**Data processing** (parse logs, transform files).  

---

## **5. Setting Up a Scripting Environment**  
### **For Bash (Linux/macOS):**  
- Default shell in Unix-based systems.  
- Open **Terminal** and create a `.sh` file:  
  ```sh
  #!/bin/bash  
  echo "Hello, World!"  
  ```
- Run with:  
  ```sh
  chmod +x script.sh  # Make executable  
  ./script.sh         # Run  
  ```

  The line `#!/bin/bash` is called a **shebang** (or **hashbang**) and is used at the **beginning of a Bash script** to specify which interpreter should be used to execute the script.

### **What Does `#!/bin/bash` Mean?**
- `#!` → Tells the system that this is a script interpreter directive.  
- `/bin/bash` → The path to the **Bash shell** that should run the script.  

### **Why Is It Used?**
1. **Ensures the script runs with Bash** (not another shell like `sh`, `zsh`, or `dash`).  
2. **Allows the script to be executed directly** (without manually calling `bash script.sh`).  

  ```

### **For Python (Cross-Platform):**  
- Install Python from [python.org](https://www.python.org/).  
- Write a `.py` file:  
  ```python
  print("Hello, World!")  
  ```
- Run with:  
  ```sh
  python script.py  
  ```

### **For PowerShell (Windows):**  
- Comes preinstalled on Windows.  
- Write a `.ps1` file:  
  ```powershell
  Write-Host "Hello, World!"  
  ```
- Run with:  
  ```powershell
  .\script.ps1  
  ```

---

## **6. Your First Script**  
### **Example: Simple Backup Script (Bash)**  
```sh
#!/bin/bash  
# This script backs up a directory  
backup_dir="/home/user/documents"  
dest_dir="/backup"  

if [ ! -d "$dest_dir" ]; then  
  mkdir -p "$dest_dir"  
fi  

tar -czf "$dest_dir/backup_$(date +%Y%m%d).tar.gz" "$backup_dir"  
echo "Backup completed!"  
```

---
