#!/bin/bash

mkdir ~/docker
cd ~/docker
for f in docker/*.sh; do bash "$f" -H; done

#TODO scour pull and dc