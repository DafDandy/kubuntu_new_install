# Ubuntu New Install
## Grab the latest LTS image from Ubuntu:
	https://ubuntu.com/download/desktop/thank-you?version=22.04.3&architecture=amd64


## Configuring the boot drive:
	https://github.com/pbatard/rufus/releases/download/v3.21/rufus-3.21.exe
	
![image](https://github.com/DafDandy/ubuntu_new_install/assets/102477185/c1283ff2-7726-47eb-a9d1-4e24ff2aebec)


## Boot into the USB drive that you had created in the post screen
This is usually by hitting F12 during startup

### For a new install

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
