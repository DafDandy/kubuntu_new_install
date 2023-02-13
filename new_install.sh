#!/bin/bash 
echo "Update configuration file"
sudo sed -i -e '$amax_parallel_downloads=10' /etc/dnf/dnf.conf
sudo sed -i -e '$afastestmirror=True' /etc/dnf/dnf.conf
sudo dnf groupinstall "KDE Plasma Workspaces"
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf makecache
sudo dnf install steam lutris akmod-nvidia xorg-x11-drv-nvidia-cuda
echo "Updating OS"
sudo dnf update && sudo dnf upgrade -y

