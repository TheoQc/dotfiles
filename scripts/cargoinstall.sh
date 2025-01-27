#!/bin/bash

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "--- Installing cargo: ${1}... ---"
    cargo install -y $1
  else
    echo "--- Already installed: ${1} ---"
  fi
}

# NOTE: do need to add ~/.cargo/bin to path

# Graphic
install viu         # cli image viewer
