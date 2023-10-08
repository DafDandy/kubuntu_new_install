## Adjusting grub parameters

Making the boot loader launch faster

Hide boot menu by manually editing the config file:
In most Linux including Ubuntu, you can edit the /etc/default/grub file along with scripts under /etc/grub.d to control how the Grub boot menu works.

1.) Firstly, open terminal from system app launcher. Run command to edit the configuration file:

    sudo nano /etc/default/grub

For Ubuntu flavors / Linux Mint, replace gedit with your favorite text editor.

When the file opens, you need to set following lines:
    
    GRUB_TIMEOUT_STYLE=hidden 

– Hide the boot menu. Though it still wait a few seconds you set by GRUB_TIMEOUT.

    GRUB_TIMEOUT_STYLE=countdown 

– Hide boot menu and show countdown. Even set GRUB_TIMEOUT=0. It counts 3,2,1.

    GRUB_TIMEOUT = 0 

– It will boot the default OS immediately. However, you may set it to 3 or 5 so you can press ESC (F4 or hold Shift) during the time to show the boot menu if need.
    
    GRUB_DISABLE_OS_PROBER=true 

– Disable “/etc/grub.d/30_os-prober” because it overwrite the value of GRUB_TIMEOUT_STYLE. However, it will no longer find other OSes other than Ubuntu.

    GRUB_RECORDFAIL_TIMEOUT=0 

– Set timeout if last boot failed. Without the key, it will show and stop at boot menu waiting user action.


![image](https://github.com/DafDandy/ubuntu_new_install/assets/102477185/ff70aa0d-81e0-49f5-97f4-c3e6f8e352e1)

After you're done with the configuration, update the script:

    sudo update-grub


Here is my exact configuration for reference

    GRUB_DEFAULT=0
    GRUB_TIMEOUT_STYLE=hidden
    GRUB_TIMEOUT=0
    GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
    GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
    GRUB_CMDLINE_LINUX=""
    
    # Uncomment to enable BadRAM filtering, modify to suit your needs
    # This works with Linux (no patch required) and with any kernel that obtains
    # the memory map information from GRUB (GNU Mach, kernel of FreeBSD ...)
    #GRUB_BADRAM="0x01234567,0xfefefefe,0x89abcdef,0xefefefef"
    
    # Uncomment to disable graphical terminal (grub-pc only)
    #GRUB_TERMINAL=console
    
    # The resolution used on graphical terminal
    # note that you can use only modes which your graphic card supports via VBE
    # you can see them in real GRUB with the command `vbeinfo'
    #GRUB_GFXMODE=640x480
    
    # Uncomment if you don't want GRUB to pass "root=UUID=xxx" parameter to Linux
    #GRUB_DISABLE_LINUX_UUID=true
    
    # Uncomment to disable generation of recovery mode menu entries
    #GRUB_DISABLE_RECOVERY="true"
    
    # Uncomment to get a beep at grub start
    #GRUB_INIT_TUNE="480 440 1"

