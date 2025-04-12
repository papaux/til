GRUB Repair
-----------

This is the go-to guide in case of grub issues. It could fail for many reasons:

- Having a dual boot could easily nuke your GRUB (e.g. getting into rescue mode). It happened in October 2024 after a Windows 11 update.
- After a GRUB config update that is incompatible with your current version of GRUB

**If your system doesn't boot**

1. Boot into a ArchLinux ISO
2. Mount your system drives::

    fdisk -l
    # identify your boot, root and efi partitions

    mount /dev/nvme0n1p2 /mnt
    mount --mkdir /dev/nvme0n1p1 /mnt/boot
    mount --mkdir /dev/nvme0n1p3 /mnt/efi

4. chroot in the partition::

    arch-chroot /mnt

5. Install the required tools

    pacman -S grub efibootmgr os-prober dosfstools mtools ntfs-3g

6. Re-install grub and update the config::

    sudo grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB
    sudo grub-mkconfig -o /boot/grub/grub.cfg

7. Validate that your Windows install has been discovered::

    grep -i windows /boot/grub/grub.cfg

**If your system is booting**

1. Install the required tools::

    sudo pacman -S os-prober

2. Mount the EFI partition to detect your windows install::

    sudo fdisk -l | grep EFI
    /dev/nvme0n1p1       2048     534527     532480   260M EFI System

    sudo mount /dev/nvme0n1p1 /efi 

3. Run os-prober::

    sudo os-prober

4. Create a backup of your current config::

    sudo cp /boot/grub/grub.cfg{,2024-10-20}

5. Re-install grub and update the config::

    sudo grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB
    sudo grub-mkconfig -o /boot/grub/grub.cfg

6. Validate that your Windows install has been discovered::

    grep -i windows /boot/grub/grub.cfg




