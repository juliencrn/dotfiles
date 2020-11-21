#!/bin/sh

echo "Make updates"

sudo apt update   # Get update
sudo apt upgrade  # Perform upates

echo "The packages have been updated"

sleep 3

echo "Ubuntu cleanup script"

sudo apt autoclean

echo "Outdated packages have been removed"

sudo apt clean

echo "The apt cache has been emptied"

sudo apt autoremove

echo "Packages installed as dependencies no longer needed have been removed"

sudo localepurge

echo "Localpurge deleted unnecessary local files"

sleep 3

echo "Machine updated & cleaned"