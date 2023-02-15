#!/bin/bash 

# Setting up the hostname for the terminal
echo Choose your hostname to display in terminal:
echo example: ryan@hostname
read hostname
hostnamectl set-hostname $hostname

# Changing the dnf file to speed up downloads and configure the fastest mirror
echo "Updating configuration file..."
sleep 3
sudo sed -i -e '$amax_parallel_downloads=10' /etc/dnf/dnf.conf
sudo sed -i -e '$afastestmirror=True' /etc/dnf/dnf.conf

# Cleaning up the system
echo "Cleaning up system..."
sleep 3
sudo dnf remove akregator cheese kaddressbook

# Updating OS
echo "Updating OS..."
sleep 3
sudo dnf update && sudo dnf upgrade -y

# Swapping the gnome with kde desktop
dnf swap @gnome-desktop @kde-desktop

# Setting up the rpmfusion repos for free and non-free sources
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo dnf makecache

# Installing the all the packages that I use for a gaming computer
sudo dnf install wine gamemode steam lutris akmod-nvidia xorg-x11-drv-nvidia-cuda 

# Downloading the sound and audio packages to make the experience better
sudo dnf groupupdate core
sudo dnf groupupdate sound-and-video

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
