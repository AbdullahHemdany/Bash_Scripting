#!/bin/bash

NUMBER=0
read NUMBER

if [[ "${NUMBER}" -lt 10 ]]
then
	echo "Number is less than 10."
else
	echo "Number is greater than 10."
fi


