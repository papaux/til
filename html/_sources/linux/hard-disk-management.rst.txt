Hard Disk Management
---------------------

This page is not exactly a single small TIL but a collection of useful commands for managing disk and partitions as well as getting state information.

Partition
~~~~~~~~~~

**View partition information**

View information like: creation time, features, block info, mount count, 

::
  
  sudo tune2fs -l /dev/sda2