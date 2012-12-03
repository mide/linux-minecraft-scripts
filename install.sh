#!/bin/bash

# Admin script
# Author: Remko de Bruin <altogoten@gmail.com> 
# Github: https://github.com/Goten87/linux-minecraft-scripts

clear
# Making all the Config files
echo "#!/bin/bash

# Minecraft Script Configs
# Author: Remko de Bruin <altogoten@gmail.com> 
# Github: https://github.com/Goten87/linux-minecraft-scripts" >> ./config.cfg

#Making The Minecraft DIR Config
read -p " Give your minecraft dir path (directory containing, no trailing slash): 
 " minecraftDir
echo "
# Location of the minecraft_server.jar (directory containing, no trailing slash)
minecraftDir=$minecraftDir" >> ./config.cfg

#Making The Minecraft Backup DIR Config
read -p " Give your backup dir path (directory containing, no trailing slash): 
 " backupDir
	echo "
# Where do you wish to store the backups (directory containing, no trailing slash)
backupDir=$backupDir" >> ./config.cfg

#Making The Minecraft Jar Config
read -p " Give your server jar name (default minecraft_server): 
 " minecraftJar
	echo "
#The jar u want to load in default (minecraft_server) or (minecraftforge-universal)
jar=$minecraftJar" >> ./config.cfg

#Making The Minecraft serverNick Config
read -p " Give your server name: " serverNick
	echo "
# Do you have more than one server? What do you want to call this one?
serverNick=$serverNick" >> ./config.cfg

#Making The Minecraft tempDir Config
read -p " Give a temp dir location (directory containing, no trailing slash): 
 " tempDir
	echo "
# Where do you want to store the temporary files? (directory containing, no trailing slash)
tempDir=$tempDir" >> ./config.cfg

#Making The Minecraft tempDir Config
read -p " Where is your minecraft log file: 
 " log
	echo "
# Where is your Minecraft Log?
log=$log" >> ./config.cfg

# Make All Files Executable
echo " Making admin.sh executable"
chmod +x ./admin.sh
sleep 1
echo " Making mc-auth.sh executable"
chmod +x ./mc-auth.sh
sleep 1
echo " Making mc-backup.sh executable"
chmod +x ./mc-backup.sh
sleep 1
echo " Making mc-backup-cron.sh executable"
chmod +x ./mc-backup-cron.sh
sleep 1
echo " Making mc-chat.sh executable"
chmod +x ./mc-chat.sh
sleep 1
echo " Making mc-list-all-players.sh executable"
chmod +x ./mc-list-all-players.sh
sleep 1
echo " Making mc-restart.sh executable"
chmod +x ./mc-restart.sh
sleep 1
echo " Making mc-start.sh executable"
chmod +x ./mc-start.sh
sleep 1
echo " Making mc-stop.sh executable"
chmod +x ./mc-stop.sh
sleep 1
echo " Making mc-temp-creative.sh executable"
chmod +x ./mc-temp-creative.sh
sleep 1
echo " Making mc-temp-creative.sh executable"
chmod +x ./mc-time.sh
sleep 1
read -p " Install script is done press enter to return to admin panel." dummy
./admin.sh