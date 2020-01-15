#!/bin/bash

# script to monitor RAM usage and send warning via email,SMS

# Author : Abdullah Hemdany

# date : 9 Jan 2020

# Set mail setting 
TO='abdullahhemdany@outlook.com'
SUBJECT='High Memory Usage'
MESSAGE='/vagrant/mem/high.log'

#use it in background (not implemented)

# start loop to check memory based on interval time
while [[ ture ]]
do
	# sleep 2 seconds before next iteration
	sleep 2s

	# Read Memory usage 
	MEMUSAGE=$(free | grep "Mem" | awk '{ print $3/$2 * 100 }')
	
	
	# check if memory usage is higher than specified limit
	if [[ "${MEMUSAGE%.*}" -gt 75 ]] 
	then
		# sending sms logic and break off while loop
		echo "RAM :  ${MEMUSAGE} -- $(date)" >> /vagrant/mem/high.log
		mail -s "${SUBJECT}" "${TO}" < ${MESSAGE}		

		# exit 1 : exit code specified here
		# exit 1
	fi
	# print the result in mem.log
	echo "RAM : ${MEMUSAGE} - $(date)" >> /vagrant/mem/mem.log
done
