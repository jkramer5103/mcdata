#!/bin/bash

# Update package lists
apt update

# Install OpenJDK 17 JRE headless
apt install -y openjdk-17-jre-headless

# Prompt user for server IP address or name

# Create directory for Minecraft server
mkdir mc
cd mc

# Download Spigot server JAR file
wget https://download.getbukkit.org/spigot/spigot-1.20.4.jar

# Create start script for Spigot server
echo "screen -dmS mcServer java -Xmx1024M -Xms1024M -jar spigot-1.20.4.jar" > start.sh
chmod +x start.sh

# Agree to Minecraft EULA
echo "eula=true" > eula.txt

# Create directory for plugins
mkdir plugins
cd plugins

# Download plugins using the provided server IP or name
wget "https://github.com/jkramer5103/mcdata/raw/main/Challenges.jar"
wget "https://github.com/jkramer5103/mcdata/raw/main/floodgate-spigot.jar"
wget "https://github.com/jkramer5103/mcdata/raw/main/Geyser-spigot.jar"
wget "https://github.com/jkramer5103/mcdata/raw/main/ViaVersion-4.9.3.jar"
wget "https://github.com/jkramer5103/mcdata/raw/main/NoCheatPlus.jar"
wget "https://github.com/jkramer5103/mcdata/raw/main/worldedit-bukkit-7.3.0.jar"
wget "https://github.com/jkramer5103/mcdata/raw/main/SuperVanish.jar"

mkdir WorldEdit
cd WorldEdit
mkdir schematics
cd schematics
wget "https://github.com/jkramer5103/mcdata/raw/main/TntFight.schem"


# Move back to main directory
cd ..
cd ..
cd ..

# Start the Minecraft server
./start.sh
