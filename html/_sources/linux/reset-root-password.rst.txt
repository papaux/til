Reset Root Password
--------------------

If you forgot your root password on Linux, follow these steps to recover:

#.  Interrupt grub boot
#.  Enter grub boot configuration by pressing `e`
#.  Edit the kernel boot command and append `init /bin/bash`
#.  Boot with `Ctrl-x`
#.  By default, the root file system is mounted read only. Remount it with rw: `mount -o remount,rw /dev/vda1 /`
#.  Change your password: `passwd`
#.  Reboot and re-enjoy your machine with root access :-)

