Hard Disk Management
---------------------

This page is not exactly a single small TIL but a collection of useful commands for managing disk and partitions as well as getting state information.

Partition
~~~~~~~~~~

**View partition information**

View information like: creation time, features, block info, mount count, etc::
  
  sudo tune2fs -l /dev/sda2

Disk
~~~~

**GPT to MS-DOS**

Transform a disk that has been previously set to GPT partitioning back to MS DOS::

  parted /dev/sda
  mklabel msdos
  quit

Benchmark
~~~~~~~~~

**Using dd**

**Using hdparm**

Test read speed with `hdparm`::

  hdparm -Tt /dev/sda
