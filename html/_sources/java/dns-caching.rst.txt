DNS Caching
-----------

The JVM keeps previous DNS resolution (successful or failed) in a local cache.

There is no true default value. The cache is _usually_ 30 seconds on Oracle JVM. It may vary with implementations.

DNS TTL is considered a security settings (to avoid DNS Spoofing) and the default value also changes when a security context is given. Usually, if a security context is given, the DNS TTL changes to infinite!! Which means that any DNS resolution is kept until the JVM restarts!

This works fine most of the time, but breaks when the target IP might change (load balancing, service fail-over, ...).

Fortunately, the configuration can be changed. Some special values:
* -1 means "cache forever"
* 0 means "never cache"

Security Context
~~~~~~~~~~~~~~~~

Configuration to be set in the `java.security` file.

* ``networkaddress.cache.ttl``: caching policy for successful resolutions.
* ``networkaddress.cache.negative.ttl``: caching policy for failed lookups. 

System Property
~~~~~~~~~~~~~~~

While some sun private system properties do exist, the recommended option is to use security properties.

* ``sun.net.inetaddr.ttl``: a sun private system property for successful resolutions.
* ``sun.net.inetaddr.negative.ttl``: a sun private system property for failed lookups.
