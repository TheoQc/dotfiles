#!/bin/bash

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "--- Installing snap: ${1}... ---"
    sudo snap install -y $1
  else
    echo "--- Already installed: ${1} ---"
  fi
}

# Games
install ascii-patrolW

# Utils
install cargo       # snap for rust packages