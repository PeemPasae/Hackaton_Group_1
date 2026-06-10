#!/bin/bash

cd /home/bootcamp/clmystery/mystery/streets/locked/

for ip in 209.103.8.44 197.82.237.190 162.240.218.117 119.123.55.141 148.9.19.27 215.143.100.205 199.242.130.73 14.121.165.122 196.45.2.86 211.92.75.1 199.71.56.65 187.91.79.110 202.129.225.117 95.125.101.128 12.104.185.44 139.94.203.41 80.130.43.26 14.252.124.193 131.33.12.73; do     echo -n "$ip : ";     grep "$ip" cart_web.log     | awk -F'|' '
    {
        path=$4
        gsub(/ /,"",path)
        gsub(/\.html/,"",path)
        c=substr(path,length(path))
        if(c~/[A-Z_]/) print c
    }' | uniq | tr -d '\n';     echo; done
