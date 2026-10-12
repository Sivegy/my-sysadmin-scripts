#!/bin/bash

LOG_FILE="monitor.log"

echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---" >> "$LOG_FILE"

echo "[ Memory ]" >> "$LOG_FILE"
free -h >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

echo "[ Disk ]" >> "$LOG_FILE"
df -h -x tmpfs -x devtmpfs >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

echo "[ Uptime ]" >> "$LOG_FILE"
uptime >> "$LOG_FILE"
echo "" >> "$LOG_FILE"
