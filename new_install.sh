#!/bin/bash

# Installing Nala package manager
sudo apt install nala

# Updating OS
echo "Updating OS..."
sleep 3
sudo nala update && sudo nala upgrade -y

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
