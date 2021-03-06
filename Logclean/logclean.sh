#!/bin/bash

clear console
  echo -e "\033[34;0;32mSollen alle logs geleert werden? \033[0m" 
	echo -e "\033[40;0;31mIhre Antwort, n/j: \033[0m"
	read answer
	echo Ihre Antwort war: $answer
	if [ "$answer" != "n" ]
  	then
		for logs in `find /var/log -type f` 
		do echo "Datei: " $logs " geleert" && > $logs 
		done
  		else echo Ok, weiter geht´s
		fi
clear console
  echo -e "\033[34;0;32mSollen alle archivierten logs gelöscht werden? \033[0m" 
	echo -e "\033[40;0;31mIhre Antwort, n/j: \033[0m"
	read answer
	echo Ihre Antwort war: $answer
	if [ "$answer" != "n" ]
		then
		for logs2 in `find /var/log -name "*.gz"` 
		do echo "Datei: " $logs2 " gelöscht" && rm -f $logs2 
		done	
		for logs3 in `find /var/log -name "*.[0123456789]"` 
		do echo "Datei: " $logs3 " gelöscht" && rm -f $logs3
		done
  	else echo Ok, weiter geht´s
	fi
clear console
echo -e "\033[34;0;32mSollen die Bash History gelöscht werden? \033[0m" 
	echo -e "\033[40;0;31mIhre Antwort, n/j: \033[0m"
	read answer
	echo Ihre Antwort war: $answer
	if [ "$answer" != "n" ]
		then
		echo > /root/.bash_history 
		echo "Bash History geleert"
  	else echo Ok, weiter geht´s
	fi
clear console
echo -e "\033[34;0;32mSollen der DJIGZO Log geleert werden? \033[0m" 
	echo -e "\033[40;0;31mIhre Antwort, n/j: \033[0m"
	read answer
	echo Ihre Antwort war: $answer
	if [ "$answer" != "n" ]
		then
		echo > /usr/share/djigzo/logs/james.wrapper.log
		echo "DJIGZO Log geleert"
  	else echo Ok, weiter geht´s
	fi
clear console
echo -e "\033[34;0;32mSoll der SSH Key gelöscht werden?? \033[0m" 
	echo -e "\033[40;0;31mIhre Antwort, n/j: \033[0m"
	read answer
	echo Ihre Antwort war: $answer
	if [ "$answer" != "n" ]
		then
		rm -f /root/.ssh/id_rsa && rm -f /root/.ssh/id_rsa.pub
		echo > /root/.ssh/known_hosts
		echo "SSH Key gelöscht"
  	else echo Ok, weiter geht´s
	fi	
echo -e "\033[34;0;32mSoll der PGP Key gelöscht werden?? \033[0m" 
	echo -e "\033[40;0;31mIhre Antwort, n/j: \033[0m"
	read answer
	echo Ihre Antwort war: $answer
	if [ "$answer" != "n" ]
		then
		rm -rf /root/.gnupg
		echo "PGP Key gelöscht"
  	else echo Ok, weiter geht´s
	fi	
clear console
echo
echo
echo
echo -e "\033[34;0;32mProgramm löscht sich jetzt selbst! \033[0m"
echo
echo 3
sleep 1
echo
echo 2
sleep 1
echo
echo 1
sleep 1
echo
echo

rm -f $0

