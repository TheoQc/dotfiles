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

# get rust packages
./cargoinstall.sh

# Run all programs/ install scripts
for f in programs/*.sh; do bash "$f" -H; done

# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove -y

# Copy home configs
./config.sh

# nicer message of the day
mkdir ~/motd
mkdir ~/motd/modules
cp ../fancy-motd/motd.sh ~/motd/
cp ../fancy-motd/config.sh.example ~/motd/config.sh
cp -R ../fancy-motd/modules ~/motd/modules

# done
figlet "Jobs done !" | lolcat
