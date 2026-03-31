#!/bin/bash
while true; do
  TRACK=$(playerctl metadata --format "[{{title}} - {{artist}}]" 2>/dev/null || echo "")
  DATE=$(date "+[%d-%m-%Y %H:%M:%S]")
  echo "${TRACK:+$TRACK}$DATE"
  sleep 1
