#!/bin/bash

cd /home/

find /home   -regextype posix-extended   -type d -regex '/home/s[0-9]{10}' -prune   -o -type f \( -newermt '2026-06-09' ! -newermt '2026-06-11' \) -print0 2>/dev/null | while IFS= read -r -d '' file; do     printf '\r[SCAN] %s\033[K' "$file" >&2;     grep -Iq . "$file" 2>/dev/null || continue;     if grep -qE "hackathon#1|hackathon#2" "$file" 2>/dev/null; then         echo;         echo "[FOUND] $file";     fi; done