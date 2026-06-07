#!/bin/bash

# Write a shell script for the login simulation

read -p "Enter the username ? " Username
read -s -p "Enter the password ? " Password

if [ "$Username" = "ADMIN" ] && [ "$Password" = "1234" ] 
then
	echo "Login Successfully"
else 
	echo "Incorrect Username or Password "
fi



