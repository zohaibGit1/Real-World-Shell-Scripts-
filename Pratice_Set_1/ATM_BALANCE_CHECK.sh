#!/bin/bash

read -p "Enter the amount to withdraw ? " Amount
currentBalance=20000
if [ "$Amount" -lt "$currentBalance" ]
then
	currentBalance=$((currentBalance - Amount))
	echo "Remaining Balance $currentBalance"
	echo "Transaction Successfully Done!!"
else
	echo "Amount Is Insufficient"

fi

