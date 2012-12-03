#!/bin/bash
clear

# Minecraft Script To List All Players
# Author: Remko de Bruin <altogoten@gmail.com> 
# Github: https://github.com/Goten87/linux-minecraft-scripts


until [ "${option}" = "exit" ]; do

	echo
	echo " Command 		- 	Function"
	echo " Auth	- view all authentications to the server"
	echo " Backup - Makes a backup of your server"
	echo " Chat	- view live chatlog of players"
	echo " Players - List of the users who have ever connected to your server"
	echo " Start - Start the minecraft server"
	echo " Restart - Start the minecraft server"
	echo " Stop	- Stops the minecraft server"
	echo " Creative [number] - gives all players creative for x amount of minutes"
	echo " Time [number] - Sets the time of the server"
	echo
	echo " exit - Exit Tool"
	echo
	read -p "	Option:  " option var1
	
	
	
	if [ "${option,,}" = "auth" ]; then
		./mc-auth.sh
	elif [ "${option,,}" = "backup" ]; then
		clear
		./mc-backup.sh
	elif [ "${option,,}" = "chat" ]; then
		clear
		./mc-chat.sh
	elif [ "${option,,}" = "players" ]; then
		clear
		./mc-list-all-players.sh
	elif [ "${option,,}" = "start" ]; then
		clear
		./mc-start.sh
	elif [ "${option,,}" = "restart" ]; then
		clear
		./mc-restart.sh
	elif [ "${option,,}" = "ctop" ]; then
		clear
		./mc-stop.sh
	elif [ "${option,,}" = "creative" ]; then
		./mc-temp-creative.sh ${var1}
	elif [ "${option,,}" = "Time" ]; then
		clear
		./mc-time.sh ${var1}
	fi
	clear
	echo " Thanks for using linux admin script for minecraft"

done