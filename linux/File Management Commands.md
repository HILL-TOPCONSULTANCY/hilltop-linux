
---

## **1. Creating Files**
### **Create an Empty File (`touch`)**
Create an empty file or update the timestamp of an existing file.

**Command:**
```bash
touch filename
```

**Example:**
```bash
touch myfile.txt
```

**Scenario:**  
You need to create a new file named `myfile.txt` for logging purposes.

---

### **Create a File with Content (`echo` or `cat`)**
Create a file and add content to it.

**Command:**
```bash
echo "Hello, World!" > filename
```

**Example:**
```bash
echo "This is a sample file." > sample.txt
```

**Scenario:**  
You want to create a file with some initial content.

---

## **2. File Permissions**
### **Understanding File Permissions in Linux**

File permissions in Linux determine who can **read**, **write**, and **execute** a file or directory. Permissions are assigned to three categories of users:

1. **Owner**: The user who owns the file.
2. **Group**: Users who belong to the file's group.
3. **Others**: All other users on the system.

---

### **Types of Permissions**
There are three basic types of permissions:

1. **Read (`r`)**: Allows viewing the contents of a file or listing the contents of a directory.
2. **Write (`w`)**: Allows modifying a file or adding/removing files in a directory.
3. **Execute (`x`)**: Allows running a file as a program or accessing a directory.

---

### **Permission Notation**
Permissions are represented in two ways:
1. **Symbolic Notation**: Uses letters (`r`, `w`, `x`) and symbols (`-` for no permission).
   Example: `rwxr-xr--`
2. **Numeric Notation**: Uses a 3-digit number (e.g., `755`), where each digit represents the permissions for the owner, group, and others.

---

### **How to Calculate Numeric Permissions**
Each permission type has a numeric value:
- **Read (`r`)**: 4
- **Write (`w`)**: 2
- **Execute (`x`)**: 1

To calculate the numeric permission:
1. Add the values of the permissions for each category (owner, group, others).
2. Combine the three numbers into a 3-digit code.

**Example:**
- `rwxr-xr--` translates to:
  - Owner: `rwx` = 4 + 2 + 1 = **7**
  - Group: `r-x` = 4 + 0 + 1 = **5**
  - Others: `r--` = 4 + 0 + 0 = **4**
- Numeric permission: **754**

---

### **Example Permissions**
| **Symbolic** | **Numeric** | **Explanation**                                                                 |
|--------------|-------------|---------------------------------------------------------------------------------|
| `rwxr-xr-x`  | 755         | Owner: full access; Group and Others: read and execute.                         |
| `rw-r--r--`  | 644         | Owner: read and write; Group and Others: read-only.                             |
| `rwxrwxrwx`  | 777         | Owner, Group, and Others: full access (not recommended for security reasons).   |
| `rw-------`  | 600         | Owner: read and write; Group and Others: no access.                             |

---

### **Viewing Permissions**
Use the `ls -l` command to view file permissions.

**Example:**
```bash
ls -l myfile.txt
```

**Output:**
```
-rw-r--r-- 1 user group 0 Oct 10 12:00 myfile.txt
```

- `-rw-r--r--`: Permissions (owner: `rw-`, group: `r--`, others: `r--`).
- `1`: Number of hard links.
- `user`: Owner of the file.
- `group`: Group associated with the file.
- `0`: File size.
- `Oct 10 12:00`: Last modified timestamp.
- `myfile.txt`: File name.

---

### **Changing Permissions**
Use the `chmod` command to change permissions.

**Example:**
```bash
chmod 755 myfile.txt
```

This sets the permissions to `rwxr-xr-x`.

---

### **View File Permissions (`ls -l`)**
Display file permissions and ownership.

**Command:**
```bash
ls -l filename
```

**Example:**
```bash
ls -l myfile.txt
```

**Output:**
```
-rw-r--r-- 1 user group 0 Oct 10 12:00 myfile.txt
```

**Scenario:**  
You want to check the permissions of `myfile.txt`.

---

### **Change File Ownership (`chown`)**
Change the owner and group of a file.

**Command:**
```bash
sudo chown owner:group filename
```

**Example:**
```bash
sudo chown john:developers myfile.txt
```

**Scenario:**  
You want to change the owner of `myfile.txt` to `john` and the group to `developers`.

---

## **3. Moving and Copying Files**
### **Move Files (`mv`)**
Move or rename files.

**Command:**
```bash
mv source destination
```

**Example:**
```bash
mv myfile.txt /home/user/documents/
```

**Scenario:**  
You want to move `myfile.txt` to the `documents` directory.

---

### **Copy Files (`cp`)**
Copy files to another location.

**Command:**
```bash
cp source destination
```

**Example:**
```bash
cp myfile.txt /backup/
```

**Scenario:**  
You want to create a backup of `myfile.txt` in the `/backup` directory.

---

### **Create Symbolic Links (`ln -s`)**
Create a symbolic link to a file.

**Command:**
```bash
ln -s target_file link_name
```

**Example:**
```bash
ln -s /var/log/syslog syslog_link
```

**Scenario:**  
You want to create a shortcut to `/var/log/syslog` named `syslog_link`.

---

## **4. Searching and Filtering Content**
### **Search for Text in Files (`grep`)**
Search for a specific pattern in a file.

**Command:**
```bash
grep "pattern" filename
```

**Example:**
```bash
grep "error" /var/log/syslog
```

**Scenario:**  
You want to find all lines containing the word "error" in the system log.

---

### **Filter File Content (`awk`)**
Filter and process text using `awk`.

**Command:**
```bash
awk '/pattern/ {print $1}' filename
```

**Example:**
```bash
awk '/error/ {print $2}' /var/log/syslog
```

**Scenario:**  
You want to extract the second column of lines containing "error" in the system log.

---

### **View Top Lines of a File (`head`)**
Display the first few lines of a file.

**Command:**
```bash
head filename
```

**Example:**
```bash
head /var/log/syslog
```

**Scenario:**  
You want to view the first 10 lines of the system log.

---

### **View Bottom Lines of a File (`tail`)**
Display the last few lines of a file.

**Command:**
```bash
tail filename
```

**Example:**
```bash
tail /var/log/syslog
```

**Scenario:**  
You want to view the last 10 lines of the system log.

---

### **Monitor File Changes in Real-Time (`tail -f`)**
Monitor a file for new content in real-time.

**Command:**
```bash
tail -f filename
```

**Example:**
```bash
tail -f /var/log/syslog
```

**Scenario:**  
You want to monitor the system log for new entries.

---

## **5. Editing Files**
### **Open a File in `vi` Editor**
Open a file in the `vi` text editor.

**Command:**
```bash
vi filename
```

**Example:**
```bash
vi myfile.txt
```

**Scenario:**  
You want to edit `myfile.txt` using the `vi` editor.

---

### **Save and Exit in `vi`**
Save changes and exit the `vi` editor.

1. Press `Esc` to enter command mode.
2. Type `:wq` and press `Enter`.

**Scenario:**  
You’ve made changes to a file and want to save and exit.

---

### **Exit Without Saving in `vi`**
Exit the `vi` editor without saving changes.

1. Press `Esc` to enter command mode.
2. Type `:q!` and press `Enter`.

**Scenario:**  
You want to discard changes and exit the editor.

---

### **Delete Content in `vi`**
Delete lines or characters in the `vi` editor.

- Delete a line: Press `dd`.
- Delete a character: Press `x`.

**Scenario:**  
You want to remove unwanted content from a file.

---

### **Append Content in `vi`**
Add new content to a file in the `vi` editor.

1. Press `i` to enter insert mode.
2. Add your content.
3. Press `Esc` to exit insert mode.

**Scenario:**  
You want to add new text to a file.

---

## **6. Advanced File Operations**
### **Empty File Content (`truncate`)**
Empty the contents of a file without deleting it.

**Command:**
```bash
truncate -s 0 filename
```

**Example:**
```bash
truncate -s 0 myfile.txt
```

**Scenario:**  
You want to clear the contents of `myfile.txt`.

---

### **Count Lines, Words, and Characters (`wc`)**
Count the number of lines, words, and characters in a file.

**Command:**
```bash
wc filename
```

**Example:**
```bash
wc myfile.txt
```

**Scenario:**  
You want to analyze the size of `myfile.txt`.

---

### **Sort File Content (`sort`)**
Sort the lines of a file alphabetically or numerically.

**Command:**
```bash
sort filename
```

**Example:**
```bash
sort myfile.txt
```

**Scenario:**  
You want to sort the contents of `myfile.txt`.

---

### **Remove Duplicate Lines (`uniq`)**
Remove duplicate lines from a file.

**Command:**
```bash
uniq filename
```

**Example:**
```bash
uniq myfile.txt
```

**Scenario:**  
You want to clean up duplicate entries in `myfile.txt`.

---

### **Find Files by Name (`find`)**
Search for files by name.

**Command:**
```bash
find /path/to/search -name "filename"
```

**Example:**
```bash
find /home -name "myfile.txt"
```

**Scenario:**  
You want to locate `myfile.txt` in the `/home` directory.

---

### **Remove Directories (`rmdir`)**
Remove empty directories.

**Command:**
```bash
rmdir directory_name
```

**Example:**
```bash
rmdir old_folder
```

**Scenario:**  
You want to delete an empty directory named `old_folder`.

---

### **Remove Non-Empty Directories (`rm -r`)**
Remove directories and their contents.

**Command:**
```bash
rm -r directory_name
```

**Example:**
```bash
rm -r old_folder
```

**Scenario:**  
You want to delete a directory and all its contents.

---
