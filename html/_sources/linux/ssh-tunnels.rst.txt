SSH Tunnels
------------

Local forwarding
~~~~~~~~~~~~~~~~

Forward a port from the client machine to the server machine, using the `-L` option.

::

    ssh -L 8080:server.company.com:80 jumpost.company.com

This opens a connection to the jumpost.company.com jump server, and forwards any connection to port 8080 made on your local machine to port 80 on server.company.com.

By default, this opens the local port to any host in the local network. Specify a *bind address* to restrict it:

::

    ssh -L 127.0.0.1:80:server.company.com:80 jumphost.company.com

Remote forwarding
~~~~~~~~~~~~~~~~~~

Tunnel a connection from the remote server to the local client.

::

    ssh -R 8080:localhost:80 jumphost.company.com

Connections made to port 8080 on the remote server will be forwarded to the port 80 of the client machine.

`localhost` can be replaced by any IP or hostname to forward to another machnie. This requires the `GatewayPorts` SSH parameters to be be set to `no`.

socks5 proxy
~~~~~~~~~~~~

SOCKS is a layer 5 protocol for proxying TCP connections between networks.

**Remote proxying**: for sharing your network connection with some remote isolated machine, use SSH remote forwarding::

  ssh -R 9999 remote-server

Then configure the proxy on your server::

  ALL_PROXY=socks5://localhost:9999

This will only work for application supporting directly socks5 proxy.

**socks5 to http proxy**: for applications that don't natively support socks5::

  npm install -g http-proxy-to-socks
  hpts -s 127.0.0.1:9999 -p 8080
