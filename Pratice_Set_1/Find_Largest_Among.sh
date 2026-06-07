#!/bin/bash 

mark1=$1
mark2=$2
mark3=$3

if [ "$mark1" -gt "$mark2" ] && [ "$mark1" -gt "$mark3" ]
then
	echo "mark1 is greater $mark1"
elif [ "$mark2" -gt "$mark3" ] && [ "$mark2" -gt "$mark1" ]
then
	echo "mark2 is greater $mark2"
else
	 echo "mark3 is greater $mark3"
fi







