#!/bin/bash

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install curl
install dialog
install file
install git
install htop
install btop
install jq
install yq
install nmap
install openvpn
install tmux
install tree
install vim
install xclip
install wget
install smartmontools # hd temp
install fail2ban      # security
install locate        # faster to find files
install unrar

# fancy-motd
install lm-sensors
install bc

# Image processing
install viu            #cli image viewer

# Fun stuff
install figlet
install lolcat
install fortune
install cowsay
install cmatrix
install hollywood

# Games
install bastet                # tetris
install nethack-console
install zangband              # rogue like
install nudoku                # sudoku
install nsnake
install moon-buggy
install crawl                 # dungeon crawler stone soup
install frotz                 # runner for zork style games, will need .dat after
install cataclysm-dda-curses  # top down zombie
install dwarf-fortress        # big and complex
install bsdgames              # many games, including adventure

#mine
#install x11vnc
install fzf           # fuzzy file search
install inotify-tools # watch directory changes
install update-motd   # easier update of motd
install screenfetch   # info like motd
install neofetch      # logo and info

#network monitoring
install bmon          # quickly see which interface has most traffic
install nethogs       # per process
install cbm           # which interface, and associated ip
install iptraf-ng     # per transport protocol;
install vnstat        # aggregated view of main interfaces
install iftop         # per destination reversed dns
install darkstat      # (BAD) complex to web result, not sold on it
install nload         # (BAD) per interface view
install speedtest-cli # use ookla thing

