#!/bin/bash

# lightweight web page to point to different sub adress
echo '🏧 Install Dash machine'

mkdir -p ${HOME}/docker/dashmachine_data

docker create \
  --name=dashmachine \
  -p 5000:5000 \
  -v ${HOME}/dashmachine_data:/dashmachine/dashmachine/user_data \
  --restart unless-stopped \
  rmountjoy/dashmachine:latest
  