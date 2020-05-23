InfluxDB Client
----------------

The easiest way to get an influx client is to use the official docker container::

  docker run --rm -it influxdb influx -host some.influx

With password authentication and HTTPS (will prompt for password)::

  docker run --rm -it influxdb influx -host secure.influx -port 8086 -ssl -username user -password ""
