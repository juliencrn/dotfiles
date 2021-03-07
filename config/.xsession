#!/bin/bash

# Setup monitors
# OR:$ ~/dotfiles/bin/setup_monitors
xrandr \
    --output DP-0 --off \
    --output DP-1 --off \
    --output DVI-D-0 --off \
    --output HDMI-0 --mode 1920x1080 --pos 1920x0 --rotate normal \
    --output HDMI-1 --mode 1920x1080 --pos 3840x0 --rotate normal \
    --output HDMI-2 --mode 1920x1080 --pos 0x0 --rotate normal

# Setup keyboard configuration
# OR:$ ~/dotfiles/bin/setup_keyboard
setxkbmap us \
    -variant altgr-intl \
    -option \
    -option caps:escape \
    -option eurosign:4

# Set background image
feh --bg-scale ~/dotfiles/assets/ubuntu-1.png

exec i3
