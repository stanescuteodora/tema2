#!/bin/bash
sudo touch /home/student/system_monitor.csv
for((i=1;i<=10;i++))
do
                                                                               
	echo  "$(hostname),$(date +%s),$(uptime | cut -d " " -f 16),$(free -k | grep Mem | tr -s " " | cut -d " " -f3),$(cat /proc/net/dev | grep enp0s3 | tr -s " " | cut -d " " -f10),$(cat /proc/net/dev | grep enp0s3 | tr -s " " | cut -d " " -f2)">>/home/student/system_monitor.csv

done	


 


