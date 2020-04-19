Docker images
-------------

**List available images**::

  docker images

**Remove unused images**::

  docker image prune

**Remove all images**::

  docker images -a -q | xargs docker rmi

