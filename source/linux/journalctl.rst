journalctl
----------

This TIL gives some usage examples of journalctl for concrete use cases.

Filtering
~~~~~~~~~

**Get Kernel Messages only**

::

  journalctl -k

**Get logs from previous boot**

::

  journalctl -b -1

** Get logs from a given service for the last our**

::

  journalctl -u my.service --since "1 hour ago"
