Cheatsheet
----------

Block traffic
~~~~~~~~~~~~~

Block output traffic to a given IP::

  sudo iptables -D OUTPUT -d 1.2.3.4 -j DROP

*Warning*: this is not a real DROP, the application will get an error on its socket. Not a real "no answer from server" test.
