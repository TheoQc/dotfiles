- manual queue in mikrotik

To setup:

- <https://umami.is/> - where traffic is from on website
- Rally <https://github.com/lukevella/rallly> - doodle for dates
- flame <https://github.com/pawelmalak/flame> - same as my startPage
- crowdsec <https://crowdsec.net/> - flood protect
- cloudflare dns - no expose ip to godaddy dns
- fix <https://github.com/Yooooomi/your_spotify> - stats sur usage spotify
- sharry - replace jirafeau <https://github.com/eikek/sharry>
- picard web - <https://github.com/mikenye/docker-picard>
- dc++ <https://www.airdcpp.net/>
- flood transmission <https://github.com/jesec/flood/wiki/Run-rTorrent-and-Flood-via-Docker>
- kavita pour bd - <https://www.kavitareader.com/#downloads-v1-docker>
- setup email on theoqc - <https://www.reddit.com/r/selfhosted/comments/vg3du0/if_you_just_bought_a_new_domain_name_do_not/>

suggestions to check:

- surricata - intrusion detection
- pfSense
- piHole
- Unbound
- openVPN
- influxDB
- Home Assistant
- openmediavault
- azuracast
- yacht
- cloudflare
- bookstack
- rancher
- nzbget
- SABnzbd
- family portal
- tautulli
- overseerr | request video by plex users
- guacamole
- dashboard
- heimdall
- netdata   bash <(curl -Ss <https://my-netdata.io/kickstart.sh>) --no-updates
- linkAce
- docspell
- webArchive
- NZBHydra
- Yacht
- keycloak | manage identity and auto login
- pwndrop
- pterodactyl
- lidarr | arr for music
- wallabag | to read, to kindle
- tinypilot | kvm sur pi4 brancher sur serveur (inclu bios)
- gotify | server de log/messages with rest api
- paperless
- frigate | object detection for cameras
- hauk | location recorder for phones
- ouroboros | update containers?

- webmin
- stress-ng
- wormhole
- conjure-up
- prometheus
- speedtest-tracker | <https://github.com/henrywhitaker3/Speedtest-Tracker>
- haskell
- Authelia (2 factor auth)
- <https://www.reddit.com/r/selfhosted/comments/so2q8i/custom_dashboard_with_realtime_service_data/> lots of cool ones

- motd more fun
- vim-adventures
  - remove all links ping home
  - run as docker
- fail2jail
- port knock

lheureux

- port des apps ou niveau router
- microtik simple queue marche pas :(

update gnome params
gsettings list-recursively | grep 'keyboard'.
then
gsettings set

Cool-Retro-Term pour une console avec du style

IF HACKED
ps
 Run rkhunter and debsums (or equivalent) to verify none of your system binaries have been overwritten.

-----------
did

- sftp from <https://docs.rackspace.com/support/how-to/set-up-sftp-users-in-linux-based-systems/>
  - ftp folder must be owned by root:root and parent as well
  - sudo groupadd sftponly
  - sudo useradd -g sftponly -s /bin/false AliceFiles
  - passwd myuser
  - modify /etc/ssh/sshd_config
    Match group sftponly
    ChrootDirectory /mnt/3tera2/ftp
    X11Forwarding no
    AllowTcpForwarding no
    ForceCommand internal-sftp
  - sshd -t
  - service sshd restart
- samba
  - apt samba
  - interface limit to vpn
- smartd setup
- install dropbox
  - cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

useful commands:

- lslogins -u (show human users)
- id monUser (show groups and all)
vimtutor

Setup
------

- install proxmox ve
- forward graphic card
- install ubuntu
- install git
- pull dotfiles
-
- setup dotfiles

docker-compose
------------------

user: "1000:1000"

labels:

- "com.centurylinklabs.watchtower.enable=true"

networks:

- theoBridge

networks:
  theoBridge:
    external: true
