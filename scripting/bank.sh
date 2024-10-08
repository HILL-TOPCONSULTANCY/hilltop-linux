
#!/bin/bash
# This script will create new users to the Bank Application Portal

# Function to print details of the bank and welcome users
function welcome_message() {
	echo "***********************************"
	echo "* Welcome to Danske Bank - Denmark*"
	echo "***********************************"
	sleep 1
	echo ""
	echo "At Danske Bank, we are committed to offering exceptional service to our costumers"
	echo "Here are some of the exclusive deals for our clients:"
	sleep 1
	echo "1. Free checking of account for the first year"
	sleep 1
	echo "2. 2% interest rate on savings"
	sleep 1
	echo "3. Free credit card for the first year"
	echo ""	
}

function registration() {
	echo "The following data is secure and follow the GDPR compliance and will only be used for bank registration"
	read -p "Please enter your Full Name:" full_name
	read -p "Please enter your Age:" age 
	read -p "Please enter your Address:" Address
	read -p "Please enter your Job Title:" job
	read -p "Please enter your Email:" email
	read -p "Please enter your Phone number:" number
}

function password() {
	while true; do
		read -sp "Please enter your password:" password
		echo ""
		read -sp "Confirm your password:" password_confirm
		echo ""
		if [ "$password" == $password_confirm ]; then
			break
		else
			echo "password does not match. Please try again"
		fi
	done
}

function review_details() {
  echo ""
  echo "**************************************"
  echo "*         Review Your Details        *"
  echo "**************************************"
  echo "Full Name: $full_name"
  echo "Age: $age"
  echo "Address: $Address"
  echo "Job Title: $job"
  echo "Email: $email"
  echo "Phone Number: $number"
  echo ""
  while true; do
  	read -p "Do you confirm the review details are correct? (yes/no): " confirm
  	if [ "$confirm == "yes" ]; then
  		break
  	elif [ "$confirm == "no" ]; then
  		echo "Please restart the process and correct your details"
  		exit 1
  	else 
  		echo "Invalid input. Please type yes or no."
  	fi
  done
}

welcome_message
registration
password
review_details

echo ""
echo "**************************************"
echo "*     Profile Successfully Registered    *"
echo "**************************************"
echo "Thank you, $full_name, for joining Danske Bank."
echo "We are excited to have you as a customer."
