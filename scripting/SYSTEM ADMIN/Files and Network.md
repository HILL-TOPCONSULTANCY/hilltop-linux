

# User and Group Management

# Function to create a user
```bash
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
```
# File and Directory Operations

# Function to create a directory
```bash
create_directory() {
    local directory="$1"

    # Check if the directory already exists
    if [ -d "$directory" ]; then
        echo "Directory $directory already exists."
    else
        # Create the directory
        mkdir -p "$directory"

        echo "Directory $directory created successfully."
    fi
}
```
# Function to delete a directory
```bash
delete_directory() {
    local directory="$1"

    # Check if the directory exists
    if [ -d "$directory" ]; then
        # Delete the directory
        rm -rf "$directory"

        echo "Directory $directory deleted successfully."
    else
        echo "Directory $directory does not exist."
    fi
}
```
# Process Management

# Function to list running processes
```bash
list_processes() {
    ps aux
}
```
# Function to kill a process by name

```bash
kill_process() {
    local process_name="$1"

    # Check if the process exists
    if pgrep "$process_name" &>/dev/null; then
        # Kill the process
        sudo pkill "$process_name"

        echo "Process $process_name killed successfully."
    else
        echo "Process $process_name not found."
    fi
}
```
# Basic Networking Operations

# Function to display network interfaces
```bash
display_interfaces() {
    ifconfig -a
}
```
# Function to display network connections
```bash
display_connections() {
    netstat -tuln
}
```
# System Monitoring and Logging

# Function to display system resource usage
```bash
display_resource_usage() {
    top -n 1
}
```
# Function to log system information
```bash
log_system_info() {
    echo "$(date): System information - $(uname -a)" >> system_info.log
    echo "System information logged to system_info.log."
}
```
# Main script

# User and Group Management
create_user "testuser" "password123"
create_group "testgroup"

# File and Directory Operations
create_directory "/tmp/testdir"

# Process Management
list_processes
kill_process "firefox"

# Basic Networking Operations
display_interfaces
display_connections

# System Monitoring and Logging
display_resource_usage
log_system_info
