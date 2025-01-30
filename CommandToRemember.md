VIM

:w !sudo tee %
used if forgot to sudo vim or sudoedit

. : redo last dommand performed

ctrl-a : increment next number found, 5ctrl-a will add 5


find worse offenders
find . -type f -print0 | xargs -0 du | sort -n | tail -10 | cut -f2 | xargs -I{} du -sh {}

find . -name 'american.god*.rar' -exec unrar x {} /files/video/Series/Usa/American\ Gods/Season\ 1/ \;
 
unrar in all subdirs
unrar e -r *.rar

du -hs * |sort -h
sort biggest subdir by sizels


ls -tr (list by modification date)

install plex
sudo dpkg -i plexmed...

zip -r to.zip folderToZip/

sudo netstat -tnpa | grep 'ESTABLISHED.*sshd'
sudo journalctl /usr/sbin/sshd |tail -n 300

locate -i
updatedb

https://victoria.dev/blog/how-to-set-up-a-fresh-ubuntu-desktop-using-only-dotfiles-and-bash-scripts/

viu myImage.png		//in terminal
fim myImage.png		//open an image viewer in X

ls -alrth

docker exec -it <mycontainer> bash

Transfer speed between 2 servers
iperf3 -c 192.168.10.222