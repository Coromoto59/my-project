#!/bin/bash
THRESHOLD=80
EMAIL="you@example.com"

USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "Disk usage is at ${USAGE}%!" >> $HOME/disk_alert.log
    # Optional: send email if configured
    # echo "Disk usage alert: ${USAGE}%" | mail -s "Disk Alert" "$EMAIL"
fi

