## Installing new software from the software center

On Ubuntu software can be installed a number of ways instead of the traditional windows approach of going to a website and downloading the installer

#### Software Center

![image](https://github.com/DafDandy/ubuntu_new_install/assets/102477185/d0656a87-9f32-4a09-aa86-92171a84b374)

You are able to search for most applications and install them with one click from the ubuntu repository that is maintained by the developers of the ubuntu distro. These packages are typically quite secure and will require no use of the terminal

#### Terminal Example:

    sudo nala install package-name

Breaking down the syntax:

**sudo** - This is your admin level execution. Only use this if you know what you're doing as this is root level access

**nala** - This is your package manager, for ubuntu/debian based distros the default is apt, which will still work, nala is just cleaner

**install** - Command to install

**package**-name - Name of the package that you're trying to install

This will install the same package from the terminal which will require no additional configuration, but not all packages are as plainly labled as this.

#### Note about terminal:

The terminal should only be used if you are confident that you know what is happening and what you are installing. 
Any package that is being installed requires root user access and has admin permissions. 
If you are not confident that you know what is being installed or are being told to put commands more than you 
can recognize do not use terminal.

##### Additional not about terminal

You can also search for packages instead of looking online how to install packages. 
Let's see an example:

    nala search package-name


This will list the entire repository that matches the package that you listed if the package exists.
It will also tell you whether or not the package is already installed on your system

#### Other package manager methods:

Depending on the package that you are trying to install or the repository that the code is stored in, you may see additional package managers used to install programs. Common ones include:

    snap
    yum
    flatpak
    apt

These package managers shouldnt be used with the sudo command unless it requires it. 
