# Ubuntu New Install
## Grab the latest image from Kubuntu:
	https://cdimage.ubuntu.com/kubuntu/releases/24.10/release/kubuntu-24.10-desktop-amd64.iso


## Configuring the boot drive:
	https://github.com/pbatard/rufus/releases/download/
	
![image](https://github.com/DafDandy/ubuntu_new_install/assets/102477185/c1283ff2-7726-47eb-a9d1-4e24ff2aebec)


## Boot into the USB drive that you had created in the post screen

This is usually by hitting F12 during startup

Once you successfully boot you'll be met at the desktop with the kubuntu installer as an icon. 

![image](https://github.com/user-attachments/assets/70b8e06d-f538-4675-a0fa-9530f4ba1824)


Run through the installer wizard just as you would with any windows install by selecting the drive you want to install it on, setting up the username and password and optional encryption level.
Disk setup you're going to want to install everything by erasing the entire disk

The default and preferred format type is EXT4
##### WARNING: BE SURE YOU'RE ACCESSING THE CORRECT DRIVE. YOU ARE DELETING EVERYTHING
If prompted to set up swap volume you can skip it. Swap is not required for the average user

#### Upon completing install

Reboot your machine and remove the install usb when prompted to


#### Just copy and paste the following commands into the terminal:


	sudo apt install git
	git clone https://github.com/DafDandy/ubuntu_new_install
	cd ubuntu_new_install
	chmod u+x new_install.sh
	./new_install.sh
