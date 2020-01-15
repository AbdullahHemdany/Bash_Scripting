#!/bin/bash

read -p "Enter a Number : " NUMBER

case "$NUMBER" in
100)
	echo "Hundred!";;
200)
	echo "Double Hundred!";;
*)
	echo "Neither a hundred nor a double hundred!";;
esac
