Disk Usage
-----------

Disk usage analysis tools.

du
~~

``du`` is a handy tool for checking the disk space used by some folders on your computer.

**Exclude mounted folders**

This command will show root-level disk usage, excluding mounted folders::

  for f in /*; do grep " $f " /proc/mounts > /dev/null || du -sh $f; done

ncdu
~~~~

Interactive disk usage analysis tool::

  ncdu -x

The `-x` option is used to only analyse the main disk and not the mounted folders.
