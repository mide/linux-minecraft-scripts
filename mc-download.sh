#!/bin/bash

# Minecraft download Script
# Author: Goten87 <altogoten@gmail.com> 
# Github: https://github.com/goten87/linux-minecraft-scripts
#http://assets.minecraft.net/%3Cversion_number_here%3E/minecraft_server.jar
# Move into the directory with all Linux-Minecraft-Scripts
cd "$( dirname $0 )"

# Read configuration file
source mc-config.cfg

echo "Please give the version u want dont use . in here use _ insted"
read -p "	Version:  " version

cd $minecraftDir

wget "http://assets.minecraft.net/$version/minecraft_server.jar"
