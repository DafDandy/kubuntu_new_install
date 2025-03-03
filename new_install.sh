#!/bin/bash

# Installing Nala package manager
sudo apt install nala

echo "Installing gaming dependencies and required packages..."
sleep 3
yes | sudo nala install wine gamemode steam-installer winetricks vlc flatpak kde-config-flatpak

echo "Cleaning up system..."
sleep 3
yes | sudo nala remove kmahjongg kmines kpat ksudoku firefox krcd
yes | sudo apt autoremove

#Installing brave browser
snap install brave

#Moving files to the desktop for easy access
mv LinuxUpdate.sh /home/$USER/Desktop/
chmod u+x /home/$USER/Desktop/LinuxUpdate.sh

mv UpdateDiscord.sh /home/$USER/Desktop/
chmod u+x /home/$USER/Desktop/UpdateDiscord.sh

# Updating OS
echo "Updating OS..."
sleep 3
yes | sudo nala update
yes | sudo nala upgrade

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