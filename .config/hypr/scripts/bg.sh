#!/usr/bin/bash

export PATH="$HOME/swww/target/release/:$PATH"

#start swwww
swww query || swww init
swww img ~/.config/hypr/wallpapers/peakpx.jpg
