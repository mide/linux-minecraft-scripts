#!/bin/bash

# Minecraft Script To List All Players
# Author: Mark Ide <cranstonide@gmail.com> 
# Github: https://github.com/cranstonide/linux-minecraft-scripts

source ./config.cfg

# List all the users who have ever connected to your server.
cat $log | grep "logged in with" | sed 's/[0-9]*-[0-9]*-[0-9]* [0-9]*:[0-9]*:[0-9]* \[INFO\] //g' | sed 's/\[\/[0-9]*.[0-9]*.[0-9]*.[0-9]*:[0-9]*\].*//g' | sort | uniq 
