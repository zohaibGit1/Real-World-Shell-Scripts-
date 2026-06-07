#!/bin/bash

# Write a ShellScript to Check the File Exists or not 

read -p "Enter the File Name to check ? " FileName

if [ -f "$FileName" ] 
then 
	echo "File Exists $FileName"
else
	echo "File Does not exist with the name $FileName"
fi





