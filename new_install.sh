#!/bin/bash

# Installing Nala package manager
sudo apt install nala

# Install KDE
echo "Installing KDE Desktop..."
sudo nala install aptitude
sudo aptitude install kde-standard


# Updating OS
echo "Updating OS..."
sleep 3
sudo nala update && sudo nala upgrade -y

# Rebooting the system to apply all changes
echo "Rebooting system to apply changes 5..."
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
