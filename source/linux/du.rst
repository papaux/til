du: Disk Usage
--------------

``du`` is a handy tool for checking the disk space used by some folders on your computer.

**Exclude mounted folders**

This command will show root-level disk usage, excluding mounted folders::

  for f in /*; do grep " $f " /proc/mounts > /dev/null || du -sh $f; done

