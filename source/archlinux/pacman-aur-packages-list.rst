Pacman: list packages from AUR
-------------------------------

This is how you can find out which packages from AUR you have installed on your computer::

   pacman -Qm

And this will list the explicitly installed packages from AUR, the ones that can be safely removed if you don't need them::

  pacman -Qme
