#!/bin/bash
# 1. คำสั่งหาไฟล์แรกที่ซ่อนอยู่ใน home
# find /home -name "hackathon#1"

# 2. คำสั่งยถอดรหัส IP ตัวอักษรแปลกหลังสุด
grep "197.82.237.190" ../streets/locked/cart_web.log | awk -F '|' '{
    split($1, date, " ");
    path = $4; gsub(/ /, "", path); gsub(/\.html/, "", path);
    last_char = substr(path, length(path));
    if (last_char ~ /[A-Z_]/) print date[1], last_char;
}' | sort -u
