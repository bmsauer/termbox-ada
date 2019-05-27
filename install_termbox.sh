#!/bin/bash

# Install C version of nsf/termbox
# This script adapted from the Crystal binding, at
# https://github.com/andrewsuzuki/termbox-crystal

# Clone termbox-c
git clone https://github.com/nsf/termbox lib-termbox

# cd to it
cd "lib-termbox"

# Configure and build
./waf configure --prefix=/usr/local
./waf

# Termbox lib should now be at lib-termbox/build/src
