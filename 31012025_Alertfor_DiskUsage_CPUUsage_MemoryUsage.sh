#!/bin/bash

# Set thresholds
CPU_THRESHOLD=80
MEM_THRESHOLD=90
DISK_THRESHOLD=90
ALERT_EMAIL="mayyappan@radial.com"
OUTPUT_FILE="/tmp/system_health_report.txt"

# Get system metrics
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
MEM_USAGE=$(free | awk '/Mem/{printf("%.2f"), $3/$2 * 100}')
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

# Print output in table format
echo -e "================ System Health Report ================\n" > $OUTPUT_FILE
echo -e "Metric\t\tValue\t\tThreshold" >> $OUTPUT_FILE
echo -e "------------------------------------------------------" >> $OUTPUT_FILE
echo -e "CPU Usage\t$CPU_USAGE%\t$CPU_THRESHOLD%" >> $OUTPUT_FILE
echo -e "Memory Usage\t$MEM_USAGE%\t$MEM_THRESHOLD%" >> $OUTPUT_FILE
echo -e "Disk Usage\t$DISK_USAGE%\t$DISK_THRESHOLD%" >> $OUTPUT_FILE
echo -e "======================================================" >> $OUTPUT_FILE

# Check thresholds and send alert
ALERT_MESSAGE=""

if (( $(echo "$CPU_USAGE > $CPU_THRESHOLD" | bc -l) )); then
    ALERT_MESSAGE+="Warning: CPU usage exceeded! Current: $CPU_USAGE%, Threshold: $CPU_THRESHOLD%\n"
fi

if (( $(echo "$MEM_USAGE > $MEM_THRESHOLD" | bc -l) )); then
    ALERT_MESSAGE+="Warning: Memory usage exceeded! Current: $MEM_USAGE%, Threshold: $MEM_THRESHOLD%\n"
fi

if (( $DISK_USAGE > $DISK_THRESHOLD )); then
    ALERT_MESSAGE+="Warning: Disk usage exceeded! Current: $DISK_USAGE%, Threshold: $DISK_THRESHOLD%\n"
fi

# Send alert if any threshold is exceeded
if [[ ! -z "$ALERT_MESSAGE" ]]; then
    echo -e "System Alert:\n\n$ALERT_MESSAGE" | mail -s "ALERT: System Resource Usage High" $ALERT_EMAIL
fi
