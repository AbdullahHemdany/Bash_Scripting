#!/bin/bash

# this script creates an account on the local system.
# you will be prompted for the account name and password

# Ask for user name
read -p 'Enter username : ' USER_NAME

# Ask for the real name
read -p 'Enter full name of the user : ' COMMENT

# Ask for the password 
read -p 'Enter the password : ' PASSWORD

# create the user 
useradd -c "${COMMENT}" ${USER_NAME}

# set passwrod for the user
echo "${PASSWORD}" | passwd --stdin ${USER_NAME}

# force the user to change password
passwd -e ${USER_NAME} 




