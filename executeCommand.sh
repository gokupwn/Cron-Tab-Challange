#!/bin/bash

log=/home/$USER/Demo/logs/hackers

cd /home/$USER/Demo/

cat $log | cut -d' ' -f3- | sort -u | while read ip; do
    sh -c "nmap --top-ports 10 -oN recon/${ip}.nmap ${ip}"
done



if [[ $(wc -l < $log) -gt 0 ]]; then echo -n > $log; fi


