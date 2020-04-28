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

Filtering: Basics
~~~~~~~~~~~~~~~~~

**Tail-like**::

  journalctl -f

**Limit the number of entries**::

  journalctl -n 50

**Latest messages first**::

  journalctl -r

Filtering: Boot
~~~~~~~~~~~~~~~

**Get logs from current boot**::

  journalctl -b

**Get logs from previous boot**::

  journalctl -b -1

**List available boots**::

  journalctl --list-boots

Filtering: Kernel
~~~~~~~~~~~~~~~~~

**Get Kernel Messages only**::

  journalctl -k

Filtering: Time Range
~~~~~~~~~~~~~~~~~~~~~

Use the ``--since`` and ``--until`` options for time based filtering.

**Get logs from the last hour**::

  journalctl --since "1 hour ago"

**Get logs from the last two days**::

  journalctl --since "2 days ago"

**Get logs between two datetimes**::

  journalctl --since "2020-04-26 22:00:00" --until "2020-04-26 23:00:00"

Filtering: Service
~~~~~~~~~~~~~~~~~~

**Get logs from a given unit**::

  journalctl -u my.service -u second.service

Filering: priority
~~~~~~~~~~~~~~~~~~

**Get logs starting with a priority value**::

  journalctl -p "crit"

**Get logs from a priority range**::

  journalctl -p "emerg".."crit"

Filtering: combine
~~~~~~~~~~~~~~~~~~

**Get logs from a given service for the last our**::

  journalctl -u my.service --since "1 hour ago"

Filtering: docker container
~~~~~~~~~~~~~~~~~~~~~~~~~~~

When sending the logs to journalctl (from the docker log driver), additional filtering capability is available.

**Get logs for a given container**::

  journalctl CONTAINER_NAME=mycontainer
