#!/bin/bash
sudo mkdir /mnt/mymnt/randoms
sudo mkdir /mnt/mymnt/passwordsp
sudo dd if=/dev/urandom of=/mnt/mymnt/randoms/random.bin bs=10000 count=1
for ((i=0; i<=100; i++))
do
	
	sudo touch /mnt/mymnt/passwords/only_numbers_and_letters$i.txt
        sudo head  /dev/urandom | tr -dc "A-Za-z0-9" | head -c 30 ; echo '' 
done	


