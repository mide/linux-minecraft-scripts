#!/bin/bash

# Minecraft Startup Script                  
# Author: Mark Ide <cranstonide@gmail.com> 
# Github: https://github.com/cranstonide/linux-minecraft-scripts


source config.cfg

# Move into the minecraft directory.
cd $minecraftDir

# Start the game in a GNU screen. It will detatch automatically.
screen -dmS minecraft java -Xmx2048M -Xms2048M -jar $jar.jar nogui
