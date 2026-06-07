#!/bin/bash
process_name=$1

if [ $# -ne 1 ]
then
    echo "Usage: $0 <process_name>"
    exit 1
fi

pid=$(pgrep "$process_name")

if [ -n "$pid" ]
then
    cpu=$(ps -p "$pid" -o %cpu --no-headers)
    mem=$(ps -p "$pid" -o %mem --no-headers)

    echo "Process Running"
    echo "PID         : $pid"
    echo "CPU Usage   : $cpu%"
    echo "Memory Usage: $mem%"
else
    echo "Process Not Found"
fi









