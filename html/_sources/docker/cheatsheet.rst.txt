Cheatsheet
----------

Container
~~~~~~~~~

**List running containers**::
  
  docker ps
  
**List all containers**::

  docker ps -a
  
**Run container**::

  docker run -it -d -p 8080:80 -v /workspace/web/:/var/www --name dev-lamp tutum/lamp
  
Parameters:

- ``-i`` interactive: Keep STDIN open even if not attached.
- ``-t`` allocate a pseudo tty.
- ``-d`` run the container detached, i.e. in background
- ``-p <host_port>:<cont_port>`` map a host port to a container port
- ``-v <host_dir>:<cont_dir>`` map a host directory to a container directory. Useful for persistent storage.
- ``--name <name>`` give a name to the container

**Connect to a running container**::
  
  docker attach 2342908cs93

**Remove Stopped Containers**::

  docker ps -a | awk '/Exit/ {print $1}' | xargs docker rm

**Remove all containers (including running containers)**::
  
  docker ps -q -a | xargs docker rm

**Show resource usage**::

  docker stats --all

