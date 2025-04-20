#!/bin/bash

LOG_FILE="log1.txt"

{
    
    echo "Date: $(date)"
    echo ""

    echo ">> CPU Usage:"
    top -b -n1 | grep "Cpu(s)"

    echo ""
    echo ">> Memory Usage:"
    free -h

    echo ""
    echo ">> Disk Usage:"
    df -h

    echo ""
    echo ">> Top 5 Memory Consuming Processes:"
    ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6

    echo ""
    echo "=========================================="

} > "$LOG_FILE"

# Optional: Print where the file is saved
echo "Report saved to $LOG_FILE"
