Remove unused locales
----------------------

Locales take some disk space (~600MB on my machine). With small SDD it might be worst to clean them up.

For that you need a tool from AUR:

::

    yaourt -S localepurge

Then edit the config file 

::

    vi /etc/locale.nopurge

And change following lines:

::

    #NEEDSCONFIGFIRST

    [...]

    #####################################################
    # Following locales won't be deleted from this system
    # for example:
    en
    en_GB
    en_GB.UTF-8
    en_US
    en_US.UTF-8
    de_DE
    de_DE.UTF-8
    fr
    fr.UTF-8
    de_CH
    de_CH.UTF-8


The last step is to execute the purge command

::

    sudo localepurge

On my system it frees up almost 600MB of uneeded files :-)