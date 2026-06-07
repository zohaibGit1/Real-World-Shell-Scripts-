#!/bin/bash

if [ $# -ne 1 ]
then 
	echo "Usage: $0 <logFile>"
	exit 1
fi

logFile=$1
if [ ! -f "$logFile" ]
then
	echo "File Does not exists"
	exit 1
fi

echo "==========================================="
echo "LOG ANALYSIS REPORT"
echo "==========================================="

echo "Total Lines          :    $(wc -l < "$logFile")"
echo "Error Count          :    $(grep -c "Error" "$logFile")"
echo "Warning Count        :    $(grep -c "Warning" "$logFile")"
echo "Info Count           :    $(grep -c "INFO" "$logFile")"

echo 
echo "Top 5 Errors"
grep "Error" "$logFile" | sort  | uniq -c | sort -nr | head -5

