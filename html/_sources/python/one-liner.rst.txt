One-Liners in Python
---------------------

Start a HTTP server::

    python -m http.server 8080 \
       --directory /tmp/ \
       --bind 127.0.0.1  # Defaults to all interfaces; supports IPv6

Start a FTP server::
    
    python -m pyftpdlib \
       --port 2121 \
       -d /tmp/ \
       -u someuser \
       -P somepass

JSON Formatting::

    python -m json.tool --sort-keys --json-lines < data.jsonl
