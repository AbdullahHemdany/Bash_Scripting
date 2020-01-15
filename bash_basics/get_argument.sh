#!/bin/bash

for ARG in "$@"
do
	INDEX=$(echo $ARG | cut -f1 -d=)
	VALUE=$(echo $ARG | cut -f2 -d=)
case $INDEX in

	X) x=$VALUE ;;

	Y) y=$VALUE ;;

	*) 
esac

done

((RESULT=x+y))
echo "X+Y=$RESULT"
