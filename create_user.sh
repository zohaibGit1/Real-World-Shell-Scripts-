#This is the shellscript the create the user
#!/bin/bash
read -p "Enter the Username ?" USER_NAME
read -s -p "Enter the Password ?" PASS_WORD

echo " Creating the User: "
sudo useradd -m $USER_NAME
echo "$USER_NAME:$PASS_WORD" |sudo chpasswd

echo "User Created SuccessFully"















 





