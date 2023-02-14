Debug containers
-----------------

There are several reasons why we cannot use traditional debugging techniques with docker containers:
1. Software running inside a docker container evolves in a different namespace.
2. Containers are usually stripped out from all extra tools as we don't want them in production.
3. Capabilities need to be given when starting the container.
4. Security best practices make sure containers do not run as root.

One nice solution to inspect a life process running inside a container is to use another container which could contain additional tools, and then attach it to the running context of the live instance.

Example::

  CONTAINER_ID=$(docker ps -aqf "name=^my-application$")
  DEBUG_IMAGE=python-devel
  docker run -it --rm \
    --pid="container:$CONTAINER_ID" --net="container:$CONTAINER_ID" \
    --cap-add sys_admin --cap-add sys_ptrace \
    "$IMAGE" \
     /bin/bash

  ...
  > yum install gdb
  > gdb python 1

This will allow to install additional tools and run gdb, strace, etc. from the container.

The PID of the application should be 1 in most cases, easy to guess :-)
