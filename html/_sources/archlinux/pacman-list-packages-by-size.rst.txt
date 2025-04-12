Pacman: list packages by size 
------------------------------

With this command found in the arch forums (https://bbs.archlinux.org/viewtopic.php?id=112038) it is possible to list the packages by size in MB, with the biggest package being listed first. Very useful to locate unused packages to free up some hard disk space.

.. code::

  pacman -Qi | egrep '^(Name|Installed)' | cut -f2 -d':' | paste - - | column -t | sort -nrk 2 | grep MiB | less  
