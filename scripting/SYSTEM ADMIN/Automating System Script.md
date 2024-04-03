```bash
#!/bin/bash

# Define variables
backup_dir="/path/to/backup"
source_dir="/path/to/source"

# Create backup directory if it doesn't exist
if [ ! -d "$backup_dir" ]; then
    mkdir -p "$backup_dir"
fi

# Create timestamp for backup filename
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backup_file="$backup_dir/backup_$timestamp.tar.gz"

# Archive and compress source directory
tar -czf "$backup_file" "$source_dir"

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "Backup completed successfully: $backup_file"
else
    echo "Backup failed."
fi
```

---

***USER MANAGEMENT***


# Managing users and groups is a crucial aspect of system administration. Shell scripts can automate user and group management tasks efficiently.
# Here's an example shell script to automate user and group management:

```bash
#!/bin/bash

# Function to create a user
create_user() {
    local username="$1"
    local password="$2"

    # Check if the user already exists
    if id "$username" &>/dev/null; then
        echo "User $username already exists."
    else
        # Create the user
        sudo useradd -m "$username"

        # Set the password
        echo "$username:$password" | sudo chpasswd

        echo "User $username created successfully."
    fi
}
```
# Function to delete a user
```bash
delete_user() {
    local username="$1"

    # Check if the user exists
    if id "$username" &>/dev/null; then
        # Delete the user
        sudo userdel -r "$username"

        echo "User $username deleted successfully."
    else
        echo "User $username does not exist."
    fi
}
```
# Function to create a group
```bash
create_group() {
    local groupname="$1"

    # Check if the group already exists
    if grep -q "^$groupname:" /etc/group; then
        echo "Group $groupname already exists."
    else
        # Create the group
        sudo groupadd "$groupname"

        echo "Group $groupname created successfully."
    fi
}
```
# Function to delete a group
```bash
delete_group() {
    local groupname="$1"

    # Check if the group exists
    if grep -q "^$groupname:" /etc/group; then
        # Delete the group
        sudo groupdel "$groupname"

        echo "Group $groupname deleted successfully."
    else
        echo "Group $groupname does not exist."
    fi
}
´´´
# Main script

# Create a user
create_user "john" "password123"

# Delete a user
delete_user "john"

# Create a group
create_group "developers"

# Delete a group
delete_group "developers"
```

This script provides functions to create, delete users and groups. You can adjust the script according to your specific user and group management requirements.
Make sure to run the script with sudo privileges or as a user with appropriate permissions for user and group management tasks.
