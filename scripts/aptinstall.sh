#!/bin/bash
W
function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "--- Installing apt: ${1}... ---"
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
install btop
install jq
install nmap
install openvpn
install tmux
install tree
install vim
install xclip
install smartmontools # hd temp
install fail2ban      # security
install locate        # faster to find files
install unrar

# Image processing
#install gimp
#install jpegoptim
#install optipng
install viu            #cli image viewer

# Fun stuff
install figlet
install lolcat
install fortune
install cowsay
install cmatrix
install hollywood

# Games
bastet                # tetris
nethack-console
zangband              # rogue like
nudoku                # sudoku
nsnake
moon-buggy
crawl                 # dungeon crawler stone soup
frotz                 # runner for zork style games, will need .dat after
cataclysm-dda-curses  # top down zombie
dwarf-fortress        # big and complex
bsdgames              # many games, including adventure

#mine
#install x11vnc
install fzf           # fuzzy file search
install inotify-tools # watch directory changes
install update-motd   # easier update of motd
install screenfetch   # info like motd
install neofetch      # logo and info
install docker

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
