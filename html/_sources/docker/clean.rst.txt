Clean
------

Remove all unused containers, networks, images (both dangling and unreferenced), and volumes::

  docker system prune -a --volumes

Analyse space usage of docker system::

  # docker system df
  TYPE                TOTAL               ACTIVE              SIZE                RECLAIMABLE
  Images              9                   9                   1.5GB               109.8MB (7%)
  Containers          9                   9                   40.36MB             0B (0%)
  Local Volumes       4                   4                   1.803MB             0B (0%)
  Build Cache         0                   0                   0B                  0B

Per image size::

  docker ps --size

Limit docker log file sizes (existing containers won't be affected! Only new containers)::

  vim /etc/docker/daemon.json
  {
    "log-driver": "json-file",
    "log-opts": {"max-size": "50m", "max-file": "3"}
  }

Hack to delete log files::

  truncate -s 0 $(docker inspect --format='{{.LogPath}}' <container_name_or_id>)

