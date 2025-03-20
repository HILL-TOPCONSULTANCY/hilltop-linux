
---

### **1. Add a User (`useradd`)**
Create a new user account.

**Command:**
```bash
sudo useradd username
```

**Example:**
```bash
sudo useradd john
```

**Scenario:**  
You need to create a new user account for a developer named "john" who will be working on the server.

---

### **2. Add a User with a Home Directory (`useradd -m`)**
Create a new user account with a home directory.

**Command:**
```bash
sudo useradd -m username
```

**Example:**
```bash
sudo useradd -m john
```

**Scenario:**  
You want to create a user account for "john" and ensure they have a home directory (`/home/john`) for storing files.

---

### **3. Set or Change a User's Password (`passwd`)**
Set or change the password for a user account.

**Command:**
```bash
sudo passwd username
```

**Example:**
```bash
sudo passwd john
```

**Scenario:**  
You need to set a password for the new user "john" or update their existing password.

---

### **4. Delete a User (`userdel`)**
Delete a user account.

**Command:**
```bash
sudo userdel username
```

**Example:**
```bash
sudo userdel john
```

**Scenario:**  
The user "john" no longer needs access to the server, so you delete their account.

---

### **5. Delete a User and Their Home Directory (`userdel -r`)**
Delete a user account along with their home directory.

**Command:**
```bash
sudo userdel -r username
```

**Example:**
```bash
sudo userdel -r john
```

**Scenario:**  
You want to remove "john" and all their files from the server.

---

### **6. Modify a User's Properties (`usermod`)**
Modify user account properties, such as username, home directory, or shell.

**Command:**
```bash
sudo usermod -d /new/home/directory username
```

**Example:**
```bash
sudo usermod -d /home/john_new john
```

**Scenario:**  
You want to change the home directory of the user "john" to `/home/john_new`.

---

### **7. Change a User's UID (`usermod -u`)**
Change the user ID (UID) of a user account.

**Command:**
```bash
sudo usermod -u new_uid username
```

**Example:**
```bash
sudo usermod -u 1005 john
```

**Scenario:**  
You need to change the UID of "john" to `1005` for compatibility with another system.

---

### **8. Change a User's Primary Group (`usermod -g`)**
Change the primary group of a user account.

**Command:**
```bash
sudo usermod -g new_gid username
```

**Example:**
```bash
sudo usermod -g 1001 john
```

**Scenario:**  
You want to change the primary group of "john" to `1001`.

---

### **9. Add a User to a Supplementary Group (`usermod -aG`)**
Add a user to a supplementary group.

**Command:**
```bash
sudo usermod -aG groupname username
```

**Example:**
```bash
sudo usermod -aG developers john
```

**Scenario:**  
You want to add "john" to the `developers` group to grant access to shared resources.

---

### **10. Remove a User from a Group (`gpasswd -d`)**
Remove a user from a group.

**Command:**
```bash
sudo gpasswd -d username groupname
```

**Example:**
```bash
sudo gpasswd -d john developers
```

**Scenario:**  
You want to remove "john" from the `developers` group.

---

### **11. Lock a User Account (`passwd -l`)**
Lock a user account to prevent login.

**Command:**
```bash
sudo passwd -l username
```

**Example:**
```bash
sudo passwd -l john
```

**Scenario:**  
You want to temporarily lock "john's" account while they are on leave.

---

### **12. Unlock a User Account (`passwd -u`)**
Unlock a previously locked user account.

**Command:**
```bash
sudo passwd -u username
```

**Example:**
```bash
sudo passwd -u john
```

**Scenario:**  
"John" is back from leave, and you want to restore their access.

---

### **13. Force a User to Change Password at Next Login (`chage -d 0`)**
Force a user to change their password at the next login.

**Command:**
```bash
sudo chage -d 0 username
```

**Example:**
```bash
sudo chage -d 0 john
```

**Scenario:**  
You want to ensure "john" updates their password for security reasons.

---

### **14. Set Password Expiration (`chage -M`)**
Set the maximum number of days a password is valid.

**Command:**
```bash
sudo chage -M days username
```

**Example:**
```bash
sudo chage -M 90 john
```

**Scenario:**  
You want to enforce a password change every 90 days for "john".

---

### **15. Add a User to the `sudo` Group (`usermod -aG sudo`)**
Grant sudo privileges to a user.

**Command:**
```bash
sudo usermod -aG sudo username
```

**Example:**
```bash
sudo usermod -aG sudo john
```

**Scenario:**  
You want to give "john" administrative privileges.

---

### **16. Remove a User from the `sudo` Group (`gpasswd -d`)**
Revoke sudo privileges from a user.

**Command:**
```bash
sudo gpasswd -d username sudo
```

**Example:**
```bash
sudo gpasswd -d john sudo
```

**Scenario:**  
You want to remove "john's" administrative privileges.

---

### **17. List All Users (`cat /etc/passwd`)**
Display a list of all user accounts.

**Command:**
```bash
cat /etc/passwd
```

**Example:**
```bash
cat /etc/passwd | grep /home
```

**Scenario:**  
You want to view all users with home directories.

---

### **18. List All Groups (`cat /etc/group`)**
Display a list of all groups.

**Command:**
```bash
cat /etc/group
```

**Example:**
```bash
cat /etc/group | grep developers
```

**Scenario:**  
You want to check which users belong to the `developers` group.

---

### **19. Check User's Group Membership (`groups`)**
Display the groups a user belongs to.

**Command:**
```bash
groups username
```

**Example:**
```bash
groups john
```

**Scenario:**  
You want to verify which groups "john" is a member of.

---

### **20. Change User's Login Shell (`chsh`)**
Change the login shell for a user.

**Command:**
```bash
sudo chsh -s /path/to/shell username
```

**Example:**
```bash
sudo chsh -s /bin/bash john
```

**Scenario:**  
You want to change "john's" default shell to `/bin/bash`.

---

### **21. Set User Account Expiry (`usermod -e`)**
Set an expiry date for a user account.

**Command:**
```bash
sudo usermod -e YYYY-MM-DD username
```

**Example:**
```bash
sudo usermod -e 2023-12-31 john
```

**Scenario:**  
You want to set "john's" account to expire on December 31, 2023.

---

### **22. Check User's Password Aging Information (`chage -l`)**
Display password aging information for a user.

**Command:**
```bash
sudo chage -l username
```

**Example:**
```bash
sudo chage -l john
```

**Scenario:**  
You want to check when "john's" password will expire.

---

### **23. Create a User with a Specific UID (`useradd -u`)**
Create a user with a specific UID.

**Command:**
```bash
sudo useradd -u uid username
```

**Example:**
```bash
sudo useradd -u 1500 john
```

**Scenario:**  
You need to create a user "john" with a specific UID (`1500`) for system integration.

---

### **24. Create a User with a Specific GID (`useradd -g`)**
Create a user with a specific GID.

**Command:**
```bash
sudo useradd -g gid username
```

**Example:**
```bash
sudo useradd -g 1001 john
```

**Scenario:**  
You want to create a user "john" with a specific primary group (`1001`).

---

### **25. List Logged-In Users (`who`)**
Display a list of users currently logged in.

**Command:**
```bash
who
```

**Example:**
```bash
who
```

**Scenario:**  
You want to see who is currently logged into the server.

---
