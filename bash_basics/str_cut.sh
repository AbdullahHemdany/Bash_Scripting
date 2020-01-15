#!/bin/bash

STR="Learn Bash Commands from UbuntuPit"
subSTR=$(echo $STR | cut -d ' ' -f 2-3 )

echo $subSTR
