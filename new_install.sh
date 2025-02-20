#!/bin/bash

# Installing Nala package manager
sudo apt install nala

# Install KDE
printf 'Do you want to install KDE Desktop? (y/n) '
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if [ "$answer" != "${answer#[Yy]}" ];then
	sudo nala install aptitude
	sudo aptitude install kde-standard
else
    break
fi

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
