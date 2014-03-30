#!/bin/bash

for logs in `find /var/log -type f` 
	do echo "Datei: " $logs " geleert" && > $logs 
done
for logs2 in `find /var/log -name "*.gz"` 
	do echo "Datei: " $logs2 " gelöscht" && rm -f $logs2 
	
for logs3 in `find /var/log -name "*.0"` 
	do echo "Datei: " $logs3 " gelöscht" && rm -f $logs3 

	for logs4 in `find /var/log -name "*.1"` 
	do echo "Datei: " $logs4 " gelöscht" && rm -f $logs4
	
for logs5 in `find /var/log -name "*.2"` 
	do echo "Datei: " $logs5 " gelöscht" && rm -f $logs5 

	
echo > /root/.bash_history && echo "Bash History geleert"
echo > /usr/share/djigzo/logs/james.wrapper.log && echo "DJIGZO Log geleert"


