#!/bin/sh

set -ex

# Stop the game server
echo "Stopping game server..."
docker stop enshrouded

# Copy files into the game data directory
echo "Restoring game data..."
cp -r /mnt/backup/* /mnt/game/server/savegame/

# Start the game server
echo "Starting game server..."
docker start enshrouded