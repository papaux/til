Software RAID
--------------

EFI and RAID
~~~~~~~~~~~~~

While installing Debian 12, it was impossible to setup RAID during the install. Grub would fail installing.

The alternative is to install without RAID, and add RAID afterwards. This shows how to proceed, based on this link: https://unix.stackexchange.com/questions/644108/raid-1-of-boot-efi-partition-on-debian

1. Backup the content of ``/boot/efi`` to another location: ``midir /efi-backup && cp -R /boot/efi /efi-backup``
2. ``umount /boot/efi``
3. ``mdadm --create --verbose /dev/md0 --level=1 --raid-devices=2 --metadata=1.0 /dev/sda1 /dev/sdb1``
4. ``mkfs.vfat /dev/md0``
5. Find the UUID of the md partiton: ``ls -alh /dev/disk/by-uuid``
6. Change ``/boot/efi`` entry in fstab with the new UUID
7. ``mount /boot/efi``
8. Copy the content back to ``/boot/efi``
9. Make sure both devices have the boot flag enabled
10. Test removing a disk and booting. Test the other way around
