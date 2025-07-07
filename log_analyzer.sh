#!/bin/bash

LOG_FILE="access.log"

if [[ ! -f "$LOG_FILE" ]]; then
  echo "Log file not found: $LOG_FILE"
  exit 1
fi

echo ""
echo "📊 Top 5 IP addresses with the most requests:"
awk '{print $1}' $LOG_FILE | sort | uniq -c | sort -nr | head -5 | awk '{printf "%s - %s requests\n", $2, $1}'

echo ""
echo "🌐 Top 5 most requested paths:"
awk -F\" '{print $2}' $LOG_FILE | awk '{print $2}' | sort | uniq -c | sort -nr | head -5 | awk '{printf "%s - %s requests\n", $2, $1}'

echo ""
echo "📦 Top 5 response status codes:"
awk '{print $9}' $LOG_FILE | sort | uniq -c | sort -nr | head -5 | awk '{printf "%s - %s requests\n", $2, $1}'

echo ""
echo "🧑‍💻 Top 5 user agents:"
awk -F\" '{print $6}' $LOG_FILE | sort | uniq -c | sort -nr | head -5 | awk '{print $2 " - " $1 " requests"}'

echo ""

