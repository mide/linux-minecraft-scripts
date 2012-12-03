#!/bin/bash
clear

# Script To Make All Files Executable
# Author: Remko de Bruin <altogoten@gmail.com> 
# Github: https://github.com/Goten87/linux-minecraft-scripts

echo " Making admin.sh executable"
chmod +X ./admin.sh
sleep 1
echo " Making mc-auth.sh executable"
chmod +X ./mc-auth.sh
sleep 1
echo " Making mc-backup.sh executable"
chmod +X ./mc-backup.sh
sleep 1
echo " Making mc-backup-cron.sh executable"
chmod +X ./mc-backup-cron.sh
sleep 1
echo " Making mc-chat.sh executable"
chmod +X ./mc-chat.sh
sleep 1
echo " Making mc-list-all-players.sh executable"
chmod +X ./mc-list-all-players.sh
sleep 1
echo " Making mc-restart.sh executable"
chmod +X ./mc-restart.sh
sleep 1
echo " Making mc-start.sh executable"
chmod +X ./mc-start.sh
sleep 1
echo " Making mc-stop.sh executable"
chmod +X ./mc-stop.sh
sleep 1
echo " Making mc-temp-creative.sh executable"
chmod +X ./mc-temp-creative.sh
sleep 1
echo " Making mc-temp-creative.sh executable"
chmod +X ./mc-time.sh
sleep 1
read -p " Making executable done press enter to return." dummy