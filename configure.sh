#!/bin/bash

# Asking to install Brave and set to default browser
printf 'Install Brave Browser? (y/n) '
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if [ "$answer" != "${answer#[Yy]}" ];then
	sudo nala install curl
	
	sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
	
	echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
	
	sudo nala update
	
	sudo nala install brave-browser
	  
else
    aptitude install firefox
fi


# Asking to install Nvidia drivers for fedora
printf 'Do you have an Nvidia GPU? (y/n) '
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if [ "$answer" != "${answer#[Yy]}" ];then
	sudo nala install nvidia-utils-525-server
else
    break
fi

# Asking to install Nvidia drivers for fedora
printf 'Remove GNOME Desktop? (y/n) '
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if [ "$answer" != "${answer#[Yy]}" ];then
	sudo apt-get remove --auto-remove ubuntu-gnome-desktop
else
    break
fi


# Installing the all the packages that I use for a gaming computer
echo "Installing gaming dependencies and required packages..."
sleep 3
sudo nala install wine gamemode steam winetricks vlc discord flatpak


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
