DNS
----

Records types
~~~~~~~~~~~~~~

* ``A``: Host address
* ``AAAA``: IPv6 Host address
* ``CNAME``: Domain name alias (map a domain name to another one)
* ``MX``: E-mail server, with a preference number
* ``SOA``: Start of Authority, contains zone info like primary DNS Server, e-mail address, etc.
* ``NS``: Authoritative name server for a zone
* ``SRV``: Location of a service, e.g. LDAP servers
* ``TXT``: Holds any text
* ``PTR``: Pointer recordReverse Lookup

Reverse DNS Lookup
~~~~~~~~~~~~~~~~~~

* IPv4: Using domain ``in-addr.arpa``, e.g. IP address ``1.2.3.4`` is resolved with ``4.3.2.1.in-addr.arpa``
* IPv6: Using domain ``ip6.arpa``, e.g. IP address ``2001:db8::567:89ab`` is resolved with ``b.a.9.8.7.6.5.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.8.b.d.0.1.0.0.2.ip6.arpa``


