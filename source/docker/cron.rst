Cron
------

When running docker in a cron task, you need to tweak the command to make it working.
Like always, cron tasks are not easy to debug when failing.

The main issue when running ``docker`` commands in cron tasks is because ``cron`` doesn't attach to any ``TTYs``.

docker-compose
~~~~~~~~~~~~~~~

The option ``-T`` must be added: `Disable pseudo-tty allocation. By default docker-compose run allocates a TTY.`

::

  /usr/local/bin/docker-compose exec -T ...
