#!/bin/bash
# change username to the normal user name
log=/home/username/Demo/logs/hackers

cd /home/username/Demo/

cat $log | cut -d' ' -f3- | sort -u | while read ip; do
    sh -c "nmap --top-ports 10 -oN recon/${ip}.nmap ${ip}"
done



if [[ $(wc -l < $log) -gt 0 ]]; then echo -n > $log; fi


