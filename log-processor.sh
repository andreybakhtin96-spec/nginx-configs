#!/bin/bash

LOG_SRC="/var/log/nginx/access.log"
FILE1="/var/log/nginx/parsed/file1.log"
FILE2="/var/log/nginx/parsed/clean.log"
FILE3="/var/log/nginx/parsed/5xx.log"
FILE4="/var/log/nginx/parsed/4xx.log"

mkdir -p /var/log/nginx/parsed

while true; do
    tail -n 10 "$LOG_SRC" >> "$FILE1"
    
    SIZE=$(du -k "$FILE1" | cut -f1)
    if [ "$SIZE" -gt 300 ]; then
        LINES=$(wc -l < "$FILE1")
        echo "$(date): Очистка, удалено $LINES строк" >> "$FILE2"
        > "$FILE1"
    fi
    
    awk '$9 ~ /^5/' "$LOG_SRC" | tail -5 >> "$FILE3"
    awk '$9 ~ /^4/' "$LOG_SRC" | tail -5 >> "$FILE4"
    
    sleep 5
done
