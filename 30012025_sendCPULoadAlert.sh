#!/bin/bash

#Explanation for this script - To trigger the email alert when the CPU_LOAD is greater or equal to THRESHOLD. Used "IF" conditional statements 

THRESHOLD=5
CPU_LOAD=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}' | cut -d. -f1)

if [ "$CPU_LOAD" -ge "$THRESHOLD" ]; then
    echo -e "Threshold limit=$THRESHOLD%\nWarning: CPU usage is high at $CPU_LOAD%" | mail -s "CPU Alert: $HOSTNAME - High Load" mayyappan@radial.com
fi
