#!/bin/bash

# make sure we are root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Start up to date is always a good idea
sudo apt update && sudo apt full-upgrade -y

# get standard repository programs
./aptinstall.sh

# get more complex snap repository programs
./snapinstall.sh

# Run all programs/ install scripts
for f in programs/*.sh; do bash "$f" -H; done

# Get all upgrades
sudo apt upgrade -y

# install docker containers
./dockerinstall.sh

# See our bash changes
source ~/.bashrc

# nicer message of the day
sudo cp motd/* /etc/update-motd.d/
sudo update-motd

# done
figlet "Jobs done !" | lolcat
