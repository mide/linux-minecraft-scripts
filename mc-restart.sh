#!/bin/bash

# Minecraft Script To List All Players
# Author: Remko de Bruin <altogoten@gmail.com> 
# Github: http://github.com/Goten87/linux-minecraft-scripts

source config.cfg

# Alert the players that the server is going to be shut down. We stuff the `stop` command into
# the screen session. \015 is the escape value for a return.
echo "Restarting in 15 seconds."
screen -p 0 -S minecraft -X eval "stuff \"say "$serverNick" will be restarting in 15 seconds.\"\015"
sleep 5
echo "Restarting in 10 seconds."
screen -p 0 -S minecraft -X eval "stuff \"say "$serverNick" will be restarting in 10 seconds.\"\015"
sleep 5
echo "Restarting in 5 seconds."
screen -p 0 -S minecraft -X eval "stuff \"say "$serverNick" will be restarting in 5 seconds.\"\015"

sleep 1
echo "Restarting in 4 seconds."
screen -p 0 -S minecraft -X eval "stuff \"say "$serverNick" will be restarting in 4 seconds.\"\015"

sleep 1
echo "Restarting in 3 seconds."
screen -p 0 -S minecraft -X eval "stuff \"say "$serverNick" will be restarting in 3 seconds.\"\015"

sleep 1
echo "Restarting in 2 seconds."
screen -p 0 -S minecraft -X eval "stuff \"say "$serverNick" will be restarting in 2 seconds.\"\015"

sleep 1
echo "Restarting in 1 seconds."
screen -p 0 -S minecraft -X eval "stuff \"say "$serverNick" will be restarting in 1 seconds.\"\015"
# Wait a moment and stop the server.
sleep 1
echo "Stopping "$serverNick"."
screen -p 0 -S minecraft -X eval "stuff \"save-all\"\015"
sleep 10
screen -p 0 -S minecraft -X eval "stuff \"stop\"\015"

sleep 5

# Move into the minecraft directory.
cd $minecraftDir
echo "Starting "$serverNick" up again."
# Start the game in a GNU screen. It will detatch automatically.
screen -dmS minecraft java -Xmx2048M -Xms2048M -jar $jar.jar nogui
