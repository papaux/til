Debug
------

Debugging slim docker images running in a Kubernetes environment can be painful. It is often lacking tools such as ```ping``, ``dig`` or ``curl``.

This page captures some alternative commands to do trivial operations.

DNS Lookup
~~~~~~~~~~

DNS resolution.

Using curl::

    $ curl --trace-ascii - https://google.com
    == Info: Host google.com:443 was resolved.
    == Info: IPv6: 2a00:1450:400a:804::200e
    == Info: IPv4: 142.250.178.206
    == Info:   Trying 142.250.178.206:443...
    == Info: Connected to google.com (142.250.178.206) port 443
    ...

Using python::

    $ python3
    import socket
    print(socket.getaddrinfo('google.com', 443))

Netcat / nc
~~~~~~~~~~~~

Test if a port is open

Using curl::

    $ curl --max-time 1 --trace-ascii - google.com:444
    == Info: Host google.com:444 was resolved.
    == Info: IPv6: 2a00:1450:400a:808::200e
    == Info: IPv4: 142.250.178.206
    == Info:   Trying 142.250.178.206:444...
    == Info:   Trying [2a00:1450:400a:808::200e]:444...
    == Info: Immediate connect fail for 2a00:1450:400a:808::200e: Network is unreachable
    == Info: Connection timed out after 1001 milliseconds
    == Info: Closing connection
    curl: (28) Connection timed out after 1001 milliseconds