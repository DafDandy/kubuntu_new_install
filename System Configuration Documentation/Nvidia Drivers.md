## Installing Nvidia drivers

#### Checking for latest driver

Inserting this command will list the most recent drivers and sort them with the most recent at the bottom

    apt-cache search 'nvidia-dkms-' | grep '^nvidia-dkms-[[:digit:]]*'

  ![image](https://github.com/DafDandy/ubuntu_new_install/assets/102477185/073a28b2-e791-4db0-92c1-50155fbcb1a9)

Updating and installing all security and important updates on Ubuntu

#### Do not skip the following two commands as you must apply all pending security updates:

    sudo nala update && sudo nala upgrade

At this time, the latest tested proprietary drive version is 535. We can install that one as follows on Ubuntu Linux 20.04 LTS:

    sudo nala install nvidia-driver-535 nvidia-dkms-535

Reboot the Linux with help of either reboot or shutdown command:

    sudo reboot

Now go to the driver verification step.


## Configuring resolution and refresh rate

The nvidia-settings command start a GUI tool for configuring the NVIDIA graphics driver. This is useful to see all GPU info or configure multiple external screen/monitors connected to your system. Open the terminal and type the following commands:
    
    sudo nvidia-settings

  ![image](https://github.com/DafDandy/ubuntu_new_install/assets/102477185/16f32ea7-828f-4f47-9d74-853c44e47331)
