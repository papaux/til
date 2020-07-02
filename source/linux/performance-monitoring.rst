Performance monitoring
-----------------------

This TIL will be a bit longer because it aims to list some of the most useful and most important performance monitoring tools available on Linux. Some are usually installed by default and some must be installed manually.

The tools are split into several categories.

The base of this page has been constructed by selecting information from: https://www.tecmint.com/command-line-tools-to-monitor-linux-performance/. It has then been enhanced based on my personal preference and uses.

General
~~~~~~~

This section shows tools displaying general information about the system state and usage.
When troubleshooting a Linux machine, these are the tools to be inspected first.

**top**

The first tool to execute, to inspect te running process on a system interactively.

::

  top - 06:49:14 up 1 day, 23:04,  1 user,  load average: 0.52, 0.86, 1.12
  Tasks: 220 total,   1 running, 219 sleeping,   0 stopped,   0 zombie
  %Cpu(s):  2.9 us,  0.7 sy,  0.0 ni, 95.9 id,  0.0 wa,  0.3 hi,  0.1 si,  0.0 st
  MiB Mem :   7879.9 total,    814.6 free,   2198.2 used,   4867.1 buff/cache
  MiB Swap:   2294.0 total,   2271.5 free,     22.5 used.   5041.8 avail Mem

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
   1034 john      20   0 4007988 373052 120692 S   8.6   4.6   6:07.41 gnome-shell
  10943 john      20   0 9240860 653416 143408 S   3.3   8.1   3:39.64 firefox
   1352 john      20   0  503356  43776  32716 S   1.0   0.5   0:06.27 gnome-terminal-
      1 root      20   0  220192   8968   6852 S   0.3   0.1   0:03.90 systemd
    563 root      20   0   57172   6336   5500 S   0.3   0.1   0:00.64 systemd-logind

**vmstat**

This less known tool is also very useful to get an overview about a lot of components from the system, but must be installed manually. The tool provides several options, but the most simple use case is:

::

  $ vmstat
  procs -----------memory---------- ---swap-- -----io---- -system-- ------cpu-----
   r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st
   1  0  23004 790600 341872 4640592    0    2   723   581  514 1102 22  5 73  0  0

The default command displays summary values since the system boot. To understand all values, have a look at the man page of the tool. Below are some more examples of ``vmstat`` commands:

* ``vmstat 3 10``: execute vmstat every 3 seconds for 10 times
* ``vmstat -a``: display active an inactive memory
* ``vmstat -s``: display a variety of event counters and statistics
* ``vmstat -d``: display disk statistics
* ``vmstat -S M``: use megabyte unit instead of kilobyte

**nmon**

Global performance and system utilization interactive monitoring tool. It can be used interactively or store data in CSV files. It can collect a lot of information and present nicely: CPU, Memory, Disk Usage, Network, Processes, NFS, Kernel, etc. The panels must be toggled inside the application by pressing the corresponding letter. You can toggle help with ``h``.

If you use always the same panels, you can load them automatically by setting the ``NMON`` variable.

::

  NMON=cmdnk nmon

Processes
~~~~~~~~~

**htop**

It is an advanced and interactive top command. Actually it is my advised replacement for htop.

**progress**

Monitoring tool to show the progress of basic coreutils linux commands such as: cp, mv, dd, tar, gzip, ...

The official documentation is located here: https://github.com/Xfennec/progress

A few examples from the official documentation:

Monitor all current and upcoming instances of coreutils commands in a simple window: ::

  watch progress -q

See how your download is progressing: ::

  watch progress -wc firefox

Look at your Web server activity: ::

  progress -c httpd

File system and I/O
~~~~~~~~~~~~~~~~~~~

Some of the most useful tools for debugging file system and disk IO issues.

**iotop**

It is a live and real time monitoring of disk I/O operations per process. It shows the number of bytes read from / written to the disk, the IO capacity usaged of the media, etc. Very useful to find why your disk is slow or heavily used.

::

  $ iotop
  Total DISK READ :       0.00 B/s | Total DISK WRITE :       0.00 B/s
  Actual DISK READ:       0.00 B/s | Actual DISK WRITE:       0.00 B/s
    TID  PRIO  USER     DISK READ  DISK WRITE  SWAPIN     IO>    COMMAND
      1 be/4 root        0.00 B/s    0.00 B/s  0.00 %  0.00 % init
      2 be/4 root        0.00 B/s    0.00 B/s  0.00 %  0.00 % [kthreadd]
      3 be/0 root        0.00 B/s    0.00 B/s  0.00 %  0.00 % [rcu_gp]
      4 be/0 root        0.00 B/s    0.00 B/s  0.00 %  0.00 % [rcu_par_gp]
      6 be/0 root        0.00 B/s    0.00 B/s  0.00 %  0.00 % [kworker/0:0H-kblockd]
      8 be/0 root        0.00 B/s    0.00 B/s  0.00 %  0.00 % [mm_percpu_wq]
      9 be/4 root        0.00 B/s    0.00 B/s  0.00 %  0.00 % [ksoftirqd/0]
     10 rt/4 root        0.00 B/s    0.00 B/s  0.00 %  0.00 % [rcu_preempt]


**lsof**

This command lists all open files and the owning process. As everything is a file in Linux, this can display disk files, processes, pipes, mqueues, devices, sockets, ...

The default command is very verbose. Look at the man page to get some insights on what the values mean. Some useful switches:

* ``lsof -u geoffrey``: list the files opened by the user geoffrey
* ``lsof -i TCP:22``: find running processes with connection on port 22
* ``lsof -i 4``: list IPv4 network files
* ``lsof -i 6``: list IPv6 network files
* ``lsof -i TCP:1-100``: list open connections on port range 1 to 100
* ``lsof -p 1234``: list open files belonging to process id 1234

::

  $ lsof
  COMMAND     PID   TID TASKCMD   USER   FD      TYPE             DEVICE SIZE/OFF       NODE NAME
  systemd     983                 john  cwd       DIR                8,2     4096          2 /
  systemd     983                 john  rtd       DIR                8,2     4096          2 /
  systemd     983                 john  txt       REG                8,2  1411208      14142 /usr/lib/systemd/systemd
  systemd     983                 john  mem       REG                8,2   561040      12192 /usr/lib/libsystemd.so.0.23.0
  systemd     983                 john  mem       REG                8,2   333728      41178 /usr/lib/libdbus-1.so.3.19.8
  systemd     983                 john  mem       REG                8,2   133000      60752 /usr/lib/libnl-3.so.200.26.0

**iostat**

The ``iostat`` tool reports global CPU and input / output statistics for each partition on the system.

::

  $ iostat
  Linux 4.18.6-arch1-1-ARCH (core-m)      09/14/2018      _x86_64_        (4 CPU)

  avg-cpu:  %user   %nice %system %iowait  %steal   %idle
            21.87    0.45    5.60    0.15    0.00   71.93

  Device             tps    kB_read/s    kB_wrtn/s    kB_read    kB_wrtn
  sda               0.88        27.86        43.78    8422261   13232504
  dm-0              0.72        23.94        40.29    7236249   12177052



**df**

This is the global disk usage analysis tool. Can be combined with ``-h`` for human readable data. The result is immediate - the tool doesn't scan the file system.

::

  $ df -h
  Filesystem             Size  Used Avail Use% Mounted on
  dev                    3.9G     0  3.9G   0% /dev
  run                    3.9G  1.3M  3.9G   1% /run
  /dev/sda2               14G   11G  1.8G  86% /
  tmpfs                  3.9G   32M  3.9G   1% /dev/shm
  tmpfs                  3.9G     0  3.9G   0% /sys/fs/cgroup
  tmpfs                  3.9G  1.7M  3.9G   1% /tmp
  /dev/sda3              2.0G  386M  1.5G  22% /opt
  tmpfs                  788M   24K  788M   1% /run/user/120
  /dev/mapper/_dev_sda4  100G   72G   23G  76% /data
  tmpfs                  788M  2.6M  786M   1% /run/user/1000


**du**

This tool can give the size of a single files or directories. It will scan the disk to compute the size, so it might be slow. My best use case is ``du -hs folder`` to get the size of folder. Note that it will start to scan mounted device.

::

  $ du -hs source                                                            │127.0.0.1 - - [14/Sep/2018 19:34:54] "GE
  396K    source

Network stats
~~~~~~~~~~~~~~

The best tool to show which application is sending which amount of data is `nethogs`

**nethogs**


The result is self-describing:

::

  NetHogs version 0.8.1

    PID USER     PROGRAM                          DEV        SENT      RECEIVED
  10364 john     /usr/share/spotify/spotify       tun0       3.707      40.496 KB/sec
   9162 john     /usr/lib/gvfs/gvfsd-http         tun0       0.454       2.342 KB/sec
   8608 john     firefox                          tun0       0.000       0.000 KB/sec
   9398 john     thunderbird                      tun0       0.000       0.000 KB/sec
   8220 john     dropbox                          tun0       0.000       0.000 KB/sec
  10238 john     /usr/share/spotify/spotify       tun0       0.000       0.000 KB/sec
   8224 john     /usr/bin/owncloud                tun0       0.012       0.000 KB/sec
      ? root     unknown TCP                                 0.000       0.000 KB/sec

  TOTAL                                                      4.173      42.838 KB/sec

**iftop**

Live and real time network bandwidth vizualization tool. Can be useful to check network speed, see through which interface the traffic is going and to which endpoint.

An example use case to get the network traffic on interface `eth0`::

  iftop -i eth0 -u bytes

**nload**

`nload` is yet another traffic stats reporting connection speed. It shows current, peak and average speed with a funky animation.

A typical usage example for getting the network traffic on interface `eth0` and speed in MBytes/s::

  nload -u M eth0

Network traffic analysis
~~~~~~~~~~~~~~~~~~~~~~~~~

**tcpdump**

Tcpdump could have its own dedicated TIL because it has so many options. But here are some useful simple commands:

* ``tcpdump -i eth0``: capture packets from the interface eth0
* ``tcpdump -XX -i eth0``: display packets and its data in HEX and ASCII format
* ``tcpdump -w capture.pcap -i eth0``: save packets to a capture.pcap file
* ``tcpdump -r capture.pcap``: read from a previously saved capture file
* ``tcpdump -i eth0 src 172.26.10.10``: capture packets for a specific destination IP
* ``tcpdump -i eth0 dst 172.26.10.10``: capture packets coming from specific IP

**netstat**

Netstat can monitor open ports and incoming and outgoing traffic. Below some useful commands:

* ``netstat -plunt``: list listening applications
* ``netstat -a``: list all TCP and UDP ports
* ``netstat -s``: statistics by protocol, ca be combined with ``u`` (UDP) and ``t`` (TCP). Can show bad segments, retransmissions, failures, ...
* ``netstat -at``: only TCP connections
* ``netstat -au``: ony UDP connections
* ``netstat -l``: all listening connections, can be combined with ``u`` (UDP) and ``t`` (TCP)
* ``netstat -lx``: all UNIX listening ports
* ``netstat -tp``: display PID and program name
* ``netstat -r``: display kernel routing table
* ``netstat -ie``: show kernel interface table
* ``netstat -i``: show network interface packet statistics
* ``netstat -c 10``: print continuously, every 10 seconds
* ``netstat --statistics --raw``: display a lot of network statistics like number of packets received, errors, ...

**iptraf**

More advanced iftop tool, which collects in additional and more advanced informaiton.

**arpwatch**

Monitors ARP address resolution happening on the network. Useful to debug ARP resolution on the network and ARP spoofing. It can even send e-mail alerts when addresses change.

Load average
~~~~~~~~~~~~

Linux makes use of three "magic" numbers that get used in several of these tools to describe the load average of the system. They could be quite confusing for beginners, but actually there are easy to understand. This is one example::

  load average: 0.20, 1.05, 5.09

The numbers define the load average for the last 1 minute (1.05), the last 5 minutes (0.70) and the last 15 minutes (5.09).

The number defines the number of processes which are in running, waiting or uninterruptible sleep states (e.g. waiting for I/O). The number have to be compared to the number of CPU on the system.

So if the example above is a system with 2 CPUs, it means that the system is fully loaded when the value is equal 2:
* over the last minute, the system was mostly idle
* over the last 5 minutes, it was half used
* over the last 15 minutes, it was overloaded: there were many processes waiting for the CPU
