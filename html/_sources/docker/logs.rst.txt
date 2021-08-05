Logs
-----

Grep in logs from all running containers::

  docker ps -q | xargs -L 1 docker logs 2>&1 | grep 'error'