#!/bin/bash

# Changing the dnf file to speed up downloads and configure the fastest mirror
echo "Updating configuration file..."
sleep 3
sudo sed -i -e '$amax_parallel_downloads=10' /etc/dnf/dnf.conf
sudo sed -i -e '$afastestmirror=True' /etc/dnf/dnf.conf

# Updating OS
echo "Updating OS..."
sleep 3
sudo dnf update && sudo dnf upgrade -y

# Swapping the gnome with kde desktop
sudo dnf groupinstall "KDE Plasma Workspaces"

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
