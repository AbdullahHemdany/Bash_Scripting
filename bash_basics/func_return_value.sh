#!/bin/bash

function Greet() {
	STR="Hello $NAME,what brings you to UbuntuPit.com"
	echo $STR
}

echo "what's your name ?"
read NAME

VALUE=$(Greet)
echo -e "$VALUE"
