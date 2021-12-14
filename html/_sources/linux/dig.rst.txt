dig
---

How to use dig ? Welcome to my Cheatsheet!

Important note: ``dig`` bypasses the "normal" DNS resolution from the host.
If you want to mimic application level DNS resolution results, dig might not be a good fit.

General
~~~~~~~~

Main usage::

    dig @server type name

- ``type``: ``A``, ``AAAA``, ``CNAME``, ``MX``, ``NS``, ``TXT``, ``NULL``

Reverse lookup::

    dig -x 8.8.8.8

Response Formatting
~~~~~~~~~~~~~~~~~~~

Get only the returned IP (script friendly output)::

    $ dig +short google.com
    172.217.20.14

Get only the answer section::

    $ dig +noall +answer google.com 
    google.com.		66	IN	A	172.217.20.14

Formatting options can be made persistent by writting them in ``~/.digrc`` file.

Trace
~~~~~~~~~

With ``+trace`` option, dig acts like a recursive resolver. It follows the query path, starting from the root servers until the name is resovled.
All intermediate responses are printed on the console::

    dig +trace google.com

