#!/bin/bash

read -p "Ask the File Name for the User ? " fileName

if [ -f "$fileName" ]
then 
	echo "File Exists "
else
	echo "File Does not Exists"
fi



