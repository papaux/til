journalctl
----------

This TIL gives some usage examples of journalctl for concrete use cases.

Persistent
~~~~~~~~~~

The journal storage configuration is set to `auto` but is actually volatile, because the `/var/log/journal` folder is not existing. In order to fix it, we need to create the folder and restart the service.::

  mkdir /var/log/journal
  chmod 0755 /var/log/journal/
  systemctl restart systemd-journald
  systemctl status systemd-journal

Status
~~~~~~

Check the storage status::

  systemctl status systemd-journald

Filtering
~~~~~~~~~

**Get Kernel Messages only**::

  journalctl -k

**Get logs from previous boot**::

  journalctl -b -1

** Get logs from a given service for the last our**::

  journalctl -u my.service --since "1 hour ago"

