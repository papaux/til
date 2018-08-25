Pacman: maintenance
--------------------

This page lists some useful commands for maintaining the installed packages on Arch Linux. Because of the Rolling Release principle of Arch Linux, after some time it might be needed to remove old and unused packages.

A list of commands for pacman and other package management systems is available here: https://wiki.archlinux.org/index.php/Pacman/Rosetta


Remove dependencies that are no longer needed, because e.g. the package which needed the dependencies was removed:

.. code::

   sudo pacman -Rsn $(pacman -Qdtq)

Clean the package cache by removing old versions but keep the currently installed ones.

.. code::

   pacman -Sc

Remove packages no longer included in any repositories.

.. code::

   pacman -Qmq | pacman -Rs -
