yum
----

Cheat sheet about useful yum commands.

**Which package installed a given file?**::

  yum whatprovides /path/to/file

**Update cache**::

  yum -t -y makecache

**List files in a rpm**::

  rpm -ql tmux

**Check which repo provides a package**::

  repoquery -i something
