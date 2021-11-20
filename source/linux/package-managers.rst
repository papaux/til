Package manager commands
-------------------------

Equivalent commands from several linux package managers.


=======================================     =======================   ==========================    ========================
   Action                                   pacman                    yum                           apt
---------------------------------------     -----------------------   --------------------------    ------------------------
Which package provides an existing file     pacman -Qo /bin/file      yum whatprovides /bin/file    dpkg -S /bin/file
=======================================     =======================   ==========================    ========================
