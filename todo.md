- vnc x11vnc
- manual queue in mikrotik

suggestions to check:
- pfSense
- piHole
- Unbound
- openVPN
- influxDB
- Home Assistant
- openmediavault
- proxmox
- azuracast
- yacht
- cloudflare
- bookstack
- rancher
- nzbget
- portainer pop
- family portal
- sonarr
- radarr
- dashboard
- dashmachine
- heimdall

- nginx or Traefik  (web reverse proxy)
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
- sonarr/radarr
- SABnzbd ? (newsgroup)
- haskell
- Jellyfin + PhoenixAdult 
- Authelia (2 factor auth)


- motd more fun
- vim-adventures 
    - remove all links ping home
    - run as docker
- fail2jail 
- port knock 
- second plex server as docker


lheureux
- port des apps ou niveau router
- microtik simple queue marche pas :(

update gnome params
gsettings list-recursively | grep 'keyboard'.
then
gsettings set

Cool-Retro-Term pour une console avec du style

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
    - interface limit to vpn
- smartd setup
        


useful commands:
- lslogins -u (show human users)
- id monUser (show groups and all)
vimtutor