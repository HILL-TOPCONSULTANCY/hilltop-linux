In shell scripting, input/output (I/O) handling refers to the process of interacting with users, files, and other processes through standard input (stdin), standard output (stdout), and standard error (stderr). Here are multiple examples of input/output handling in shell scripting:

1. **Reading Input from Users**:

```bash
# Prompt the user for input and store it in a variable
echo "Enter your name:"
read name
echo "Hello, $name!"
```

2. **Reading Input from Files**:

```bash
# Read lines from a file and process them
while IFS= read -r line; do
    echo "Line: $line"
done < input.txt
```

3. **Redirecting Output to Files**:

```bash
# Redirect output of a command to a file
echo "Hello, world!" > output.txt

# Append output to a file
echo "Appending text" >> output.txt
```

4. **Piping Output to Another Command**:

```bash
# Pipe output of one command to another
ls | grep "pattern"
```

5. **Redirecting Standard Error**:

```bash
# Redirect stderr to a file
command_not_found 2> error.log

# Redirect both stdout and stderr to a file
command_not_found &> combined.log
```

6. **Here Documents (Heredocs)**:

```bash
# Use heredocs to provide input to a command
cat << EOF
Line 1
Line 2
EOF
```

7. **Reading Command Output**:

```bash
# Capture command output and store it in a variable
current_date=$(date +%Y-%m-%d)
echo "Current date: $current_date"
```

8. **Output Formatting**:

```bash
# Format output using printf
printf "Name: %s\tAge: %d\n" "John" 30
```

9. **Selecting Input from Menu**:

```bash
# Display a menu and prompt user for selection
echo "Select an option:"
select option in "Option 1" "Option 2" "Option 3"; do
    case $option in
        "Option 1")
            echo "You chose Option 1";;
        "Option 2")
            echo "You chose Option 2";;
        "Option 3")
            echo "You chose Option 3";;
        *)
            echo "Invalid option";;
    esac
    break
done
```

10. **Interactive Input with User Prompts**:

```bash
# Use dialog or whiptail for interactive user prompts (requires installation)
dialog --inputbox "Enter your name:" 10 30 2> /dev/tty
```

#Here's an example shell script that allows users to register into a school by inputting their details, creating a profile, and printing an overview. The script then redirects the output into a text file:

```bash
#!/bin/bash

# Function to prompt user for input and store it in variables
get_user_details() {
    read -p "Enter your name: " name
    read -p "Enter your age: " age
    read -p "Enter your email: " email
}
```
```sh
# Function to create user profile
create_profile() {
    cat << EOF
    Profile Information:
    Name: $name
    Age: $age
    Email: $email
EOF
}
```
```sh
# Main script

# Welcome message
echo "Welcome to School Registration System"

# Get user details
get_user_details

# Create user profile
create_profile

# Print overview
echo "Registration completed successfully."

# Redirect output to a text file
output_file="user_profile.txt"
create_profile > "$output_file"

echo "User profile has been saved to $output_file"
```

#Save the above script into a file (e.g., `register.sh`) and make it executable (`chmod +x register.sh`). Then, run the script (`./register.sh`),
#and it will prompt users to input their details, create a profile, print an overview, and save the profile to a text file named `user_profile.txt`.

=================================================================================================
```sh
#!/bin/bash

# Function to prompt user for input and store it in variables
get_user_details() {
    read -p "Enter your first name: " first_name
    read -p "Enter your last name: " last_name
    read -p "Enter your date of birth (YYYY-MM-DD): " dob
    read -p "Enter your address: " address
    read -p "Enter your email: " email
    read -p "Create a password for your account: " -s password
    echo ""
}
```
```sh
# Function to create user profile
create_profile() {
    cat << EOF
    Welcome to Danske Bank, $first_name!

    Profile Information:
    First Name: $first_name
    Last Name: $last_name
    Date of Birth: $dob
    Address: $address
    Email: $email
EOF
}
```
```sh
# Main script

# Welcome message
echo "Welcome to Danske Bank Registration System"

# Get user details
get_user_details

# Sleep for 1 second
sleep 1

# Create user profile
create_profile

# Sleep for 1 second
sleep 1

# Print overview
echo "Registration completed successfully."

# Redirect output to a text file
output_file="bank_profile.txt"
create_profile > "$output_file"

echo "User profile has been saved to $output_file"
```
