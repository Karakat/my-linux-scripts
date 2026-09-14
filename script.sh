#!/bin/bash

INTERVAL=30
LOG_FILE="/var/log/monitor.log"

echo "Скрипт запущен. Мониторинг пишется в $LOG_FILE. Для выхода нажмите Ctrl+C"

while true; do
    echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---" >> "$LOG_FILE"
    free -h >> "$LOG_FILE"
    df -h >> "$LOG_FILE"
    uptime >> "$LOG_FILE"
    echo "" >> "$LOG_FILE"
    sleep "$INTERVAL"
done