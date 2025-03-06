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

##### WARNING: BE SURE YOU'RE ACCESSING THE CORRECT DRIVE. YOU ARE DELETING EVERYTHING

The default and preferred format type is EXT4

![image](https://github.com/user-attachments/assets/2d7f4e52-a3ad-4425-bc3a-caf9224408a1)

Your drive will look something like this during the installation.

If prompted to set up swap volume you can skip it. Swap is not required for the average user


#### Upon completing install

Reboot your machine and remove the install usb when prompted to


#### Final step is to copy and paste the following commands into the terminal:

You can either search for the terminal in the home menu or press ctrl+alt+t to bring it up

#### Note: When working in ther teminal you cant copy and paste with ctrl+c or ctrl+v. 
These are reserved commands to interact with the terminal. 
Keyboard shortcuts are ctrl+shift+c and ctrl+shift+v or most times you can simply right click in the terminal to be prompted with options

eg: ctrl+c kills the terminal process 

![image](https://github.com/user-attachments/assets/8307c119-da38-44c3-8dae-a3b32d6641c8)

	sudo apt install git
	git clone https://github.com/DafDandy/ubuntu_new_install
	cd ubuntu_new_install
	chmod u+x new_install.sh
	./new_install.sh
