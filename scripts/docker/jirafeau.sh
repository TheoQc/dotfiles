#!/bin/bash

# file sharing whiteboard
echo '🦒 Install Jirafeau'

# config
appConfig = ${HOME}/docker/dashmachine_data
appData = /files/download/jirafeau
externalPort = 8765

mkdir -p ${appConfig}
mkdir -p ${appData}

# Install container
echo run --restart=always -d \
    -p 0.0.0.0:${externalPort}:80 \
    --hostname=jirafeau \
    --name=jirafeau \
    -v ${appData}:/data \
    -v ${appConfig}:/cfg \
    jgeusebroek/jirafeau