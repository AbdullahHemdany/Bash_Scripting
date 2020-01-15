#!/bin/bash

# purpose : create a new user on local machine 
# usage   : new-local-user.sh USERNAME [COMMENT]...
# you must supplay a username at first anything after that will
# be treated as comment
# author  : Abdullah Hemdany

# check if root.
if [[ "${UID}" -ne 0 ]] 
then
	echo "Please run with root privileges."
	exit 1
fi

# check if user supplied one argument at least.
if [[ "${#}" -lt 1 ]]
then
	echo "Usage : ${0} USERNAME [COMMENT]..."
	exit 1
fi

# set USER_NAME
USER_NAME="${1}"

# set the comment
shift
COMMENT="${@}"

# Generate a password.
PASSWORD=$(date +%s%N | sha256sum | head -c32)

# Create the user with password.
useradd -c "${COMMENT}" -m ${USER_NAME}

# check to see if useradd command succeeded
if [[ "${?}" -ne 0 ]]
then
	echo 'the account could not be created'
	userdel "${USER_NAME}"
	exit 1
fi

# set the password 
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

# check to see if the passwd command succeeded
if [[ "${?}" -ne 0 ]]
then
	echo 'the password could not be set'
	exit 1
fi

# force password change 
passwd -e ${USER_NAME}

# display the username , password , and the hostname
echo "--- --- --- --- --- ---"
echo "User Name : ${USER_NAME}"
echo "Password  : ${PASSWORD} "
echo "Host      : ${HOSTNAME} "
echo "--- --- --- --- --- ---"
exit 0


