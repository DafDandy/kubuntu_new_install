#!/bin/bash 
echo Choose your hostname to display in terminal:
echo example: ryan@hostname
read hostname
hostnamectl set-hostname $hostname
echo "Updating configuration file..."
sleep 3
sudo sed -i -e '$amax_parallel_downloads=10' /etc/dnf/dnf.conf
sudo sed -i -e '$afastestmirror=True' /etc/dnf/dnf.conf
echo "Updating OS..."
sleep 3
sudo dnf update && sudo dnf upgrade -y
sudo dnf groupinstall "KDE Plasma Workspaces"
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo dnf makecache
sudo dnf install steam lutris akmod-nvidia xorg-x11-drv-nvidia-cuda
sudo dnf groupupdate core
sudo dnf groupupdate sound-and-video
echo "Updating OS..."
sleep 3
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
sudo dnf update && sudo dnf upgrade -y
sudo reboot
