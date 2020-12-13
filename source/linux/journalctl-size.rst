journalctl size
----------------

Systemd journal defaults to a limit of 10% of the underlaying filesystem, maxing out at 4Gb.

Check the current size with:

::

    journalctl --disk-usage 

It is however possible to reduce the max size per configuration or also to clean the journal at run time.

For limiting by configuration, just create a new config file and add the content:

::

    vi /etc/systemd/journald.conf.d/00-journal-size.conf

::

    [Journal]
    SystemMaxUse=500M


You can also clean the journal when requried, either size-based on time-based:

:: 

    journalctl --vacuum-size=500M

    journalctl --vacuum-time=2weeks

Validate the journal files health:

::

    journalctl --verify 