#!/bin/bash

# Update Ubuntu and get standard repository programs
./aptinstall.sh

# Run all programs/ install scripts
for f in programs/*.sh; do bash "$f" -H; done

# Get all upgrades
sudo apt upgrade -y

# install docker containers
./dockerinstall.sh

# See our bash changes
source ~/.bashrc

# done
figlet "Jobs done !" | lolcat
