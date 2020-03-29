docker-compose
---------------

This page is about docker-compose

docker-compose from cron
~~~~~~~~~~~~~~~~~~~~~~~~~

If you want to use a ``docker-compose exec`` command from a cron task, you have to specify the ``-T`` option, to disable pseudo-tty allocation.

Update images
~~~~~~~~~~~~~~

To update docker images that are using "latest" tag in compose files, in order to limit the downtime first pull the new image version, and then take the stack down and up.

```
docker-compose pull
docker-compose down
docker-compose up -d
```

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
