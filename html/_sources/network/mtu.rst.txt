MTU
----

Debugging network issues related to MTU can be tricky.

When encountering weird connectivity issues through VPN, the probability is high that it's a MTU issue.

Check configured MTU size::

  ifconfig | grep eth0 | grep -o "mtu.*"
  # or 
  ip addr | grep "mtu [0-9]*"

Send these ping commands to check the MTU size by changing the packet size (`-s` parameter)

:: 

  ping -M do -s 1300 example.com
  ping -M do -s 1400 example.com
  ping -M do -s 1500 example.com

In case it's a MTU issue, you'll see:
1. First ping commands with small values are working

::

  $ ping -M do -s 1300 example.com   
  PING example.com (93.184.216.34) 1300(1328) bytes of data.
  1308 bytes from 93.184.216.34 (93.184.216.34): icmp_seq=1 ttl=55 time=361 ms
  1308 bytes from 93.184.216.34 (93.184.216.34): icmp_seq=2 ttl=55 time=180 ms
  ^C
  --- example.com ping statistics ---
  2 packets transmitted, 2 received, 0% packet loss, time 3ms
  rtt min/avg/max/mdev = 179.919/270.407/360.896/90.489 ms

2. Then pings are failing with no answer: this is the window where we are in the MTU issue

::

  $ ping -M do -s 1380 example.com
  PING example.com (93.184.216.34) 1380(1408) bytes of data.
  ^C
  --- example.com ping statistics ---
  5 packets transmitted, 0 received, 100% packet loss, time 129ms

3. Finally when the size gets bigger, we see MTU error messages.

::

  $ ping -M do -s 1420 example.com 
  PING example.com (93.184.216.34) 1420(1448) bytes of data.
  ping: local error: Message too long, mtu=1412
  ^C
  --- example.com ping statistics ---
  1 packets transmitted, 0 received, +1 errors, 100% packet loss, time 0ms


Solution
~~~~~~~~~

`iptables` can be used to setup a workaround, by automatically sending a lower MTU on TCP connection estalishment:

::

  sudo iptables -t mangle -A POSTROUTING -p tcp --tcp-flags SYN,RST SYN -o eth0 -j TCPMSS --set-mss 1300 
