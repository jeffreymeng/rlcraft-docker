#!/bin/sh

MINECRAFT_VER=1.12.2
FORGE_VER=14.23.5.2855

echo "Downloading Forge..."
FORGE_URL=https://files.minecraftforge.net/maven/net/minecraftforge/forge/${MINECRAFT_VER}-${FORGE_VER}/forge-${MINECRAFT_VER}-${FORGE_VER}-installer.jar
wget "$FORGE_URL" -O installer.jar

echo "Downloading RLCraft..."
RLCRAFT_URL=$(curl https://mediafilez.forgecdn.net/files/4612/979/RLCraft+1.12.2+-+Release+v2.9.3.zip)
wget "$RLCRAFT_URL" -O rlcraft.zip
unzip -q rlcraft.zip
rm -rf rlcraft.zip
