## Installing new software from the software center

On Ubuntu software can be installed a number of ways instead of the traditional windows approach of going to a website and downloading the installer

#### Software Center

![image](https://github.com/DafDandy/ubuntu_new_install/assets/102477185/d0656a87-9f32-4a09-aa86-92171a84b374)

You are able to search for most applications and install them with one click from the ubuntu repository that is maintained by the developers of the ubuntu distro. These packages are typically quite secure and will require no use of the terminal

#### Terminal

    sudo nala install brave-browser

This will install the same package from the terminal which will require no additional configuration, but not all packages are as plainly labled as this.

#### Note about terminal:

The terminal should only be used if you are confident that you know what is happening and what you are installing. Any package that is being installed requires root user access and has admin permissions. If you are not confident that you know what is being installed or are being told to put commands more than you can recognize do not use terminal.

#### Other package manager methods:

Depending on the package that you are trying to install or the repository that the code is stored in, you may see additional package managers used to install programs. Common ones include:

    snap
    yum
    flatpak
    apt

These package managers shouldnt be used with the sudo command unless it requires it. 
