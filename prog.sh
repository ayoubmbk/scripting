#!/bin/bash


yad  --text="Choose a commande" \
--button=gtk-cancel:1 \
--button="memoire":2 \
--button="disque dur":3 \
--button="kernel":4 \
--button="help":5 \
--button="sauvegarder":6 \
--button="afficher":7 \
--button="date de lancement":8 

foo=$?

if [ $foo -eq 1 ]
then
	exit 0
elif [ $foo -eq 2 ]
then
	cat /proc/meminfo > memoire.txt
	yad --fullscreen --text-info --filename="memoire.txt"
elif [ $foo -eq 3 ]
then 
	cat /proc/partitions > dd.txt 
	yad  --fullscreen --text-info --filename="dd.txt" 

elif [ $foo -eq 4 ]
then 
	cat /proc/version > kernel.txt
	yad --fullscreen --text-info --filename="kernel.txt" 

elif [[ $foo -eq 5 ]]
then
	yad --fullscreen --text-info --filename="help.txt"
elif [[ $foo -eq 6 ]]
then
	head -3 /proc/meminfo > s.txt
        cat /proc/partitions >> s.txt
        cat /proc/version >> s.txt
elif [[ $foo -eq 7 ]]
then
	yad --fullscreen --text-info --filename="s.txt"
elif [[ $foo -eq 8 ]]
then
cat /proc/uptime >date.txt
	yad --fullscreen --text-info --filename="date.txt"


fi
