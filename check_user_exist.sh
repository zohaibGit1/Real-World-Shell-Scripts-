#!/bin/bash

read -p "Enter the username: " username
read -s -p "Enter the password: " password
echo

check=$(grep -c "^$username:" /etc/passwd)

if [ "$check" -eq 0 ]
then
    echo "Creating the user..."

    sudo useradd -m "$username"

    echo "$username:$password" | sudo chpasswd

    echo "User created successfully."
else
    echo "User already exists."
fi
