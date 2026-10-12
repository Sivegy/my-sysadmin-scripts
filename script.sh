#!/bin/bash

LOG_FILE="monitor.log"

echo "--- $(date) ---" >> $LOG_FILE
free -h >> $LOG_FILE
df -h >> $LOG_FILE
uptime >> $LOG_FILE
