#!/bin/bash

# Updating OS
echo "Updating OS..."
sleep 3
sudo apt update && sudo apt upgrade -y

# Swapping the gnome with kde desktop
sudo apt install aptitude
aptitude install kde-standard

# Rebooting the system to apply all changes
echo "Rebooting sytem to apply changes 5..."
sleep 1
echo "4..."
sleep 1
echo "3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
sleep 1
sudo reboot
