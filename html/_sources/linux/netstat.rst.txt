netstat
--------

This page contains some useful netstat command to perform specific tasks or answer specific questions.


**Remote IPs with open connections**

Show the list of remote IPs having open connections to the machine. In this example it is for the port 8086 (influxdb)

::

  sudo netstat -tunp | grep 8086 | awk '{print $5}' | cut -f1 -d":" | sort | uniq -c | sort -nr 
