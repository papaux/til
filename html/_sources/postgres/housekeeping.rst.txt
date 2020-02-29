PSQL Housekeeping
-----------------

Some useful commands or queries when managing a Postgres database server.

Vacuum!
~~~~~~~

Noticing some `SELECT` queries are running slow ? You might need to do some clean up! In my case, it reduced one Django page load from 30s down to 2s. Yes, only by vacuuming!

::

  vacuumdb -a

The `-a` is used to apply to all databases form the server.