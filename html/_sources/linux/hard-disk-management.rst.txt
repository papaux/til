Hard Disk Management
---------------------

This page is not exactly a single small TIL but a collection of useful commands for managing disk and partitions as well as getting state information.

Global information
~~~~~~~~~~~~~~~~~~

Get all information about a disk::

  hdparm -I /dev/sdc

Diagnostic
~~~~~~~~~~

Get number of running hours::

  smartctl --all /dev/sdc | grep Power_On_Hours


Get SATA version::

  smartctl -i -n standby /dev/sdc | grep SATA

Power mode
~~~~~~~~~~

Get drive power state (might wake up the drive)::

  hdparm -C /dev/sdc

Get current power mode of a hard drive, without waking it up::

  smartctl -i -n standby /dev/sds

Put drive into stand by::

  hdparm -y /dev/sdc

Partition
~~~~~~~~~~

**View partition information**

View information like: creation time, features, block info, mount count, etc::

  sudo tune2fs -l /dev/sda2

Partition table
~~~~~~~~~~~~~~~~

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
