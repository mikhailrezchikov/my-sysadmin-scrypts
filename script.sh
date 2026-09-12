#!/bin/bash
LOGFILE="/var/log/syslog"

if [ ! -f "$LOGFILE" ]; then
    echo "$LOGFILE не найден"
    exit 1
fi

grep -aiE "error|fail" "$LOGFILE" > report.txt
