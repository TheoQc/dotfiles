#!/bin/bash

#sudo add-apt-repository ppa:kubuntu-ppa/backports
sudo apt update && sudo apt full-upgrade -y

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "--- Installing: ${1}... ---"
    sudo apt install -y $1
  else
    echo "--- Already installed: ${1} ---"
  fi
}

# Basics
#install awscli
#install chromium-browser
install curl
install dialog
#install exfat-utils
install file
install git
install htop
install jq
install nmap
install openvpn
install tmux
install tree
install vim
install xclip

# Image processing
#install gimp
#install jpegoptim
#install optipng

# Fun stuff
install figlet
install lolcat
install fortune
install cowsay

# Games
bastet                # tetris
nethack-console
zangband              # rogue like
nudoku                # sudoku
nsnake

moon-buggy
frotz                 # text adventure
crawl                 # dungeon crawler stone soup

#mine
install x11vnc
install fzf           #fuzzy file search
install inotify-tools #watch directory changes
install screenfetch   #info like motd

