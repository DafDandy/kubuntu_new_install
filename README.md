# Fedora_New_Install
## Grab the latest image from Fedora:
	https://download.fedoraproject.org/pub/fedora/linux/releases/37/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-37-1.7.iso


## Configuring the boot drive:
	https://github.com/pbatard/rufus/releases/download/v3.21/rufus-3.21.exe
	
![image](https://user-images.githubusercontent.com/102477185/218571697-02dffdba-cb42-47be-9033-393629ba4f47.png)

## Boot into the USB drive that you had created in the post screen
This is usually by hitting F12 during startup

### For a new install
These are the main packages that you will need if you are using an nvidia gpu. This includes installing steam, lutris, and the most important thing being the nvidia drivers

#### Just copy and paste the following commands:


	sudo dnf install git
	https://github.com/DafDandy/Fedora_New_Install
	cd Fedora_New_Install
	chmod u+x new_install.sh
	yes|./new_install.sh
