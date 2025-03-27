#!/bin/bash

# Color definitions
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Function to display header
display_header() {
    clear
    echo -e "${PURPLE}"
    echo "   _  __          ___           __         ___      "
    echo "  / |/ /___ ____ / _ \___ _____/ /__ ___  / _ \___ "
    echo " /    / _ \`/ -_) ___/ _ \`/ __/  '_/(_-< / // / -_)"
    echo "/_/|_/\_,_/\__/_/   \_,_/\__/_/\_\/___/____/\__/ "
    echo -e "${NC}"
    echo -e "${CYAN}=== Nordea Bank Denmark - Customer Portal ===${NC}"
    echo ""
}

# Function to create account
create_account() {
    display_header
    echo -e "${YELLOW}=== New Customer Registration ===${NC}"
    echo ""
    
    # Collect user information
    echo -e "${BLUE}Please enter your personal details:${NC}"
    read -p "Full Name: " full_name
    read -p "Age: " age
    read -p "Job Title: " job
    read -p "Annual Salary (DKK): " salary
    read -p "Phone Number: " phone
    read -p "Full Address (Street, City, Postal): " address
    
    # Password input with hidden characters
    echo ""
    echo -e "${BLUE}Create your secure password:${NC}"
    read -sp "Password (hidden input): " password
    echo ""
    read -sp "Confirm Password: " password_confirm
    echo ""
    
    # Verify password match
    if [ "$password" != "$password_confirm" ]; then
        echo -e "${RED}Error: Passwords do not match!${NC}"
        return 1
    fi
    
    # Generate username (first name + last initial)
    username=$(echo "$full_name" | awk '{print tolower($1) substr(tolower($2),1,1)}')
    
    # Display summary
    display_header
    echo -e "${GREEN}=== Registration Summary ===${NC}"
    echo ""
    echo -e "${CYAN}Full Name:${NC} $full_name"
    echo -e "${CYAN}Username:${NC} $username"
    echo -e "${CYAN}Age:${NC} $age"
    echo -e "${CYAN}Job:${NC} $job"
    echo -e "${CYAN}Salary:${NC} $salary DKK"
    echo -e "${CYAN}Phone:${NC} $phone"
    echo -e "${CYAN}Address:${NC} $address"
    echo ""
    
    # Confirmation
    read -p "Confirm registration? (yes/no): " confirm
    
    if [ "$confirm" = "yes" ]; then
        echo ""
        echo -e "${GREEN}"
        echo "   ___ _   _  ___ ___ ___  ___ ___   ___ "
        echo "  / __| | | |/ __/ __/ _ \/ __/ __| / _ \\"
        echo " | (__| |_| | (_| (_|  __/\__ \__ \|  __/"
        echo "  \___|\__,_|\___\___\___||___/___/ \___|"
        echo -e "${NC}"
        echo -e "${GREEN}Welcome to Nordea Bank, $full_name!${NC}"
        echo -e "Your account has been ${GREEN}successfully created${NC}."
        echo -e "Your username is: ${YELLOW}$username${NC}"
        echo ""
        echo -e "${BLUE}Please remember your credentials for login.${NC}"
        echo ""
        read -n 1 -s -r -p "Press any key to continue to login..."
    else
        echo -e "${RED}"
        echo "  ___ _ __ ___  _   _ _ __ "
        echo " / _ \ '_ \ _ \| | | | '__|"
        echo "|  __/ | | | | | |_| | |   "
        echo " \___|_| |_| |_|\__,_|_|   "
        echo -e "${NC}"
        echo -e "Account creation ${RED}cancelled${NC}. Please try again."
        exit 1
    fi
}

# Function for login
login() {
    display_header
    echo -e "${YELLOW}=== Customer Login ===${NC}"
    echo ""
    
    read -p "Username: " input_username
    read -sp "Password: " input_password
    echo ""
    
    # Simulate authentication
    if [ -n "$input_username" ] && [ -n "$input_password" ]; then
        echo ""
        echo -e "${GREEN}"
        echo "  _                _ "
        echo " | |    ___   __ _(_)_ __"
        echo " | |   / _ \ / _\` | | '_ \\"
        echo " | |__| (_) | (_| | | | | |"
        echo " |_____\___/ \__, |_|_| |_|"
        echo "             |___/"
        echo -e "${NC}"
        echo -e "Welcome back, ${YELLOW}$input_username${NC}!"
        echo -e "You have ${GREEN}successfully logged in${NC} to Nordea Online Banking."
        echo ""
        echo -e "${BLUE}What would you like to do today?${NC}"
        echo "1. Check Balance"
        echo "2. Transfer Money"
        echo "3. View Transactions"
        echo "4. Logout"
    else
        echo -e "${RED}Login failed! Please try again.${NC}"
        exit 1
    fi
}

# Main program flow
while true; do
    display_header
    echo -e "${CYAN}=== Welcome to Nordea Bank ===${NC}"
    echo ""
    echo "1. Create New Account"
    echo "2. Login"
    echo "3. Exit"
    echo ""
    read -p "Select option (1-3): " choice
    
    case $choice in
        1) 
            create_account
            login
            break
            ;;
        2) 
            login
            break
            ;;
        3) 
            echo -e "${BLUE}Thank you for choosing Nordea Bank. Goodbye!${NC}"
            exit 0
            ;;
        *) 
            echo -e "${RED}Invalid option. Please try again.${NC}"
            sleep 1
            ;;
    esac
done
