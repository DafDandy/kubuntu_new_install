#!/bin/bash

# Installing Nala package manager
sudo apt install nala

# Updating OS
echo "Updating OS..."
sleep 2
yes | sudo nala update
yes | sudo nala upgrade

echo "Installing gaming dependencies and required packages..."
sleep 2
yes | sudo nala install wine gamemode steam-installer winetricks vlc flatpak kde-config-flatpak timeshift goverlay mangohud gnome-boxes r8125-dkms

echo "Cleaning up system..."
sleep 2
yes | sudo nala remove kmahjongg kmines kpat ksudoku firefox
yes | sudo apt autoremove

#Installing brave browser
snap install brave
snap install discord

#Moving files to the desktop for easy access
mv LinuxUpdate.sh /home/$USER/Desktop/
chmod u+x /home/$USER/Desktop/LinuxUpdate.sh

mv UpdateDiscord.sh /home/$USER/Desktop/
chmod u+x /home/$USER/Desktop/UpdateDiscord.sh

chmod u+x gpu_drivers.sh

# motivational speech
echo "Buckle up buttmunch, its gaming time"
sleep 5

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
