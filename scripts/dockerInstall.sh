#!/bin/bash

mkdir ~/docker
cd ~/docker
for f in docker/*.sh; do bash "$f" -H; done
