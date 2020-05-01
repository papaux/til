SSL - TLS
------------

This page gives insight on how to manage and check HTTPS certificates for SSL/TLS connections.

Certificate chain
~~~~~~~~~~~~~~~~~~~~~

Web servers must be sending the full certificate chain if we want the clients to be able to validate the certificates.

The `openssl` tool can be used to verify this chain:

::

  openssl s_client -showcerts -connect google.com:443

This will show all details about the certificates and the chain.

To print only a summary of the chain, this command will give the required information:

::

  openssl s_client -showcerts -connect google.com:443 2>/dev/null | grep "[s]:"
