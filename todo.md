- vnc x11vnc
- dot files
- transmission
- ftp
    - turn off ftp
    - change sftpuser
    - nologin user
- starwars to alias
- samba
    - or nfs
- manual queue in mikrotik

suggestions to check:
- nginx
- owncloud or nextcloud
-git
- webmin
- wekan
- powershell
- stress-ng
- sabnzbd?
- wormhole
- conjure-up
- prometheus

- haskell

- motd more fun
- vim-adventures remove all links ping home
- fail2jail ou qqch comme ça
- port knock 

lheureux
- port des apps ou niveau router
- simple queue marche pas :(
- vnc pas router, juste tunnel, c'est bon ou mieux changer port
- 

update gnome params
gsettings list-recursively | grep 'keyboard'.
then
gsettings set

-----------
did
- sftp
    - add group sftp...
    - sudo useradd -g sftp -s /bin/false sftpUserWithAName 
    - need password
    - modify /etc/ssh/sshd..
    Match group sftp
    ChrootDirectory /mnt/3tera2/ftp
    X11Forwarding no
    AllowTcpForwarding no
    ForceCommand internal-sftp
- samba
    - apt samba
    - todo
        - interface limit to vpn
        - acccess download
        


useful commands:
- lslogins -u (show human users)
- id monUser (show groups and all)
vimtutor