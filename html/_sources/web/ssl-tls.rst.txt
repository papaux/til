SSL - TLS
------------

This page gives insight on how to manage and check HTTPS certificates for SSL/TLS connections.

Self signed certificate
~~~~~~~~~~~~~~~~~~~~~~~

This is a one-liner to generate a self signed certificate. Answer the questions and you are done::

  openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout private.key -out certificate.crt

And if you don't want to manually answer the questions for creating the certificate, add the `-subj` option::

  openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout private.key -out certificate.crt -subj "/C=CH/ST=FR/L=Local/O=Home/CN=localhost"

Certificate chain
~~~~~~~~~~~~~~~~~~

Web servers must be sending the full certificate chain if we want the clients to be able to validate the certificates.

The `openssl` tool can be used to verify this chain:

::

  openssl s_client -showcerts -connect google.com:443

This will show all details about the certificates and the chain.

To print only a summary of the chain, this command will give the required information:

::

  openssl s_client -showcerts -connect google.com:443 2>/dev/null | grep "[s]:"

Inspect Certificate File
~~~~~~~~~~~~~~~~~~~~~~~~

Check a certificate file (individual certificate .crt or fullchain .pem)::

  openssl x509 -in certificate.crt -text -noout

Check a private key file::

  openssl rsa -in privkey.pem -check
