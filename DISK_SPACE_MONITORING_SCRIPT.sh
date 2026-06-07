#!/bin/bash

resource_values=$(df -h | grep '/dev/xvda3' |awk '{print $5}'| sed 's/%//')
if [ $resource_values -gt 90 ]    
then 
	echo " Disk usage reached 90% "
elif [ $resource_values -gt 80 ]
then
        echo " Disk usage reached 80%" 
else
	echo " Disk is good to use"
fi
























