docker-compose
---------------

This page is about docker-compose

docker-compose from cron
~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to use a ``docker-compose exec`` command from a cron task, you have to specify the ``-T`` option, to disable pseudo-tty allocation.

Resource limits
~~~~~~~~~~~~~~~

It's possible to limit the memory assigned to a given container in a docker-compose stack.

**Version 2**

::

  version: '2.4'
  services:
    name:
      image: image
      mem_limit: 300m


**Version 3**

::

  version: '3'
  services:
    name:
      image: image
      deploy:
        resources:
          limits:
            memory: 300m
