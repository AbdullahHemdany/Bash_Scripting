#!/bin/bash

# display the UID and username of the user executing this script
# display if the user is the vagrant user or not

# display the UID
echo "UID is ${UID}"

# only display if the UID doesn't match 1000
UID_TEST='1000'
if [[ "${UID}" -ne "${UID_TEST}" ]] ;
then
	echo "Your UID doesn't match ${UID_TEST}"
	exit 1
else
	echo "You are vagrant!";
fi

# display username
USER_NAME=$(id -un)

# test if the command executed
if [[ ${?} -ne 0 ]];
then
	echo "the id command didn't execute succesfully"
	exit 1
fi
echo "Your user name is ${USER_NAME}"

# you can use a string test conditional
USER_NAME_TEST="vagrant"
if [[ "${USER_NAME}" = "${USER_NAME_TEST}" ]];
then
	echo "your user name matches ${USER_NAME_TEST}"
fi

# test for != (not equal) for string value 
if [[ "${USER_NAME}" != "${USER_NAME_TEST}" ]]
then
	echo "your user name doesn't match ${USER_NAME_TEST}"
fi

exit 0
