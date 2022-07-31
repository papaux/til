Pacman: maintenance
--------------------

This page lists some useful commands for maintaining the installed packages on Arch Linux. Because of the Rolling Release principle of Arch Linux, after some time it might be needed to remove old and unused packages.

A list of commands for pacman and other package management systems is available here: https://wiki.archlinux.org/index.php/Pacman/Rosetta

Remove dependencies that are no longer needed, because e.g. the package which needed the dependencies was removed::

   sudo pacman -Rsn $(pacman -Qdtq)

Clean the package cache by removing old versions but keep the currently installed ones::

   pacman -Sc

Remove packages no longer included in any repositories (careful if you are using pacman from AUR, these will be removed as well)::

   pacman -Qmq | pacman -Rs -

List packages with missing files form the file system::

   pacman -Qk 2>/dev/null | grep -v ' 0 missing files' 

List packages that have been modified on the local system::

   pacman -Qkk 2>1 | grep -v "0 altered files" | grep -v "failed to calculate" | tee /tmp/pacman-packages.log

When you identified a package that has been altered, reinstall it with::

   pacman -S <package>
