Stats and information
----------------------

Logs
~~~~

Show container logs::

  docker logs containerName

Show only new logs::

   docker logs -f containerName

Resources usage
~~~~~~~~~~~~~~~

Show CPU and memory usage::

  docker stats

Show CPU and memory usage for specific containers::

  docker stats containerName1 containerName2

Show running processes in a container::

  docker top containerName

Show Docker events::

  docker events

Show storage usage::

  docker system df
