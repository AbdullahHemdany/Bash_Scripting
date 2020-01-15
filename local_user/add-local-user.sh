#!/bin/bash

# purpose : script to automate user creation
# You will be prompted to enter username(login), the person name, and password 

# author  : Abdullah Hemdany 

# date    : 7 Jan 2020

# version : 1.0.0

# START

# Make sure the script is being executed with super user privileges
if [[ "${UID}" -ne 0 ]];
then
	echo 'please run with sudo or as root'
	exit 1
fi

# Get the username ( login )
read -p 'Enter username to create : ' USER_NAME

# Get full name (contents for the description field)
read -p 'Enter full name or description of the local user: ' COMMENT

# get password
read -p 'Enter the password to use for the account: ' PASSWORD

# create the account
useradd -c "${COMMENT}" -m ${USER_NAME}

# check to see if the useradd command succeeded
if [[ "${?}" -ne 0 ]]
then
	echo "account couldn't be created"
	exit 1
fi

# set password for the account 
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

# check if password was set
if [[ "${?}" -ne 0 ]]; 
then 
	echo "password couldn't be set"
	exit 1
fi

# force password change on first login 
passwd -e ${USER_NAME}

# display username,password,and the host where user created
echo
echo 'username:'
echo "${USER_NAME}"
echo 'password:'
echo "${PASSWORD}"
echo 'host:'
echo "${HOSTNAME}"
echo 
exit 0
 
# END
