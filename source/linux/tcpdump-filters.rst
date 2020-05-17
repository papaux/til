tcpdump: filters
-----------------

``tcpdump`` is a really powerful tool, but event to grap a simple frame you need to pass several options. This TIL will be a collection of several tcpdump commands to capture various kind of network traffic.

Ping
~~~~

Capture ping traffic on eth0 from all hosts

::

  tcpdump -nnti eth0 icmp

ARP
~~~

Show all ARP trafic::

  tcpdump -i eth0 arp
