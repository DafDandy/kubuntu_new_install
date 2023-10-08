# Installing a new drive

Find your disk:

    sudo blkid
If it is already formatted, you should see entry like /dev/sdb1 with UUID and PARTUUID settings.

If your disk is not formatted, create a new partition:

    sudo cgdisk /dev/sdb
and format it:

Below is an example of the expected drive naming conventions lead by a /dev/

![image](https://github.com/DafDandy/ubuntu_new_install/assets/102477185/a5b97dc4-76fb-4d2d-bb71-47ddfbeeedac)

    sudo mkfs -t ext4 /dev/drive_name



Create directory for your hdd:

    sudo mkdir /media/storage
Run sudo blkid again, note the UUID of your /dev/sdb1 partition and add it into /etc/fstab (make a backup of fstab by installing etckeeper - this file is important):

UUID="b4c93..."  /media/storage  ext4  defaults  0  2
fstab wiki page describes what does it mean. This should make it persistent over reboots.

Finally mount it without rebooting to test:

    sudo mount -av


## Changing drive permissions for user

By default the drive for the system will not recognize you as the sudo user meaning that you cant interact with the drive in the same way that you can on windows such as making new folders and directories.

The following command will add permissions to the user to interact with this drive in the expected way

    sudo chmod a+rwx /path/to/file
