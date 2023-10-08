# Ubuntu New Install
## Grab the latest LTS image from Ubuntu:
	https://ubuntu.com/download/desktop/thank-you?version=22.04.3&architecture=amd64


## Configuring the boot drive:
	https://github.com/pbatard/rufus/releases/download/v3.21/rufus-3.21.exe
	
![image](https://github.com/DafDandy/ubuntu_new_install/assets/102477185/c1283ff2-7726-47eb-a9d1-4e24ff2aebec)


## Boot into the USB drive that you had created in the post screen

This is usually by hitting F12 during startup

Once you successfully boot you'll be met at the desktop with the ubuntu installer as an icon. 

![image](https://github.com/DafDandy/ubuntu_new_install/assets/102477185/6fd23204-3c50-4aa5-b2fa-62571d89c924)

Run through the installer wizard just as you would with any windows install by selecting the drive you want to install it on, setting up the user name and password and optional encryption level.

#### Upon completing install

Reboot your machine and remove the install usb when prompted to



### First time boot

Time to configure your system and install all the same packages that I have so we will all have simular systems. The scripts you'll be executing will update and upgrade the OS to the most recent version, including installing all the additional security patches that have not made it into the main installer.

Secondly, the configure script will install steam, discord, and other packages needed to have a seamless audio and video experience

In the configure script you'll be asked a few questions:

#### Install brave browser?

If you choose not to install brave firefox will be your default browser

#### Do you have an Nvidia GPU?

If you answer yes the proper nvidia drivers will be searched for at the time of scripting. There is a few settings that will need to be tweaked that can be found [here](https://github.com/DafDandy/ubuntu_new_install/blob/main/System%20Configuration%20Documentation/Nvidia%20Drivers.md)

If the answer is no then no drivers will be installed. AMD cards do not require drivers since linux has baked in AMD support

#### Just copy and paste the following commands into the terminal:


	sudo apt install git
	git clone https://github.com/DafDandy/ubuntu_new_install
	cd ubuntu_new_install
	chmod u+x new_install.sh
	yes|./new_install.sh
	
#### After running the first script go ahead and run the second with the following commands:
	cd ubuntu_new_install
	chmod u+x configure.sh
	yes|./configure.sh
