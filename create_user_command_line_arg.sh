#!/bin/bash

USER_NAME=$1
PASS_WORD=$2

echo " Creating the User with the User Name ?"
sudo useradd -m $USER_NAME


echo "Setting the Password for the User"
echo "$USER_NAME:$PASS_WORD" | sudo chpasswd

echo "Creating the User Name"




