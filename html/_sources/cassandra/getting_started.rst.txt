Getting Started
----------------

Start a simple Cassandra cluster from Docker::
  
  docker run --name § -p 9042:9042 cassandra:latest

Connect using csqlsh (using some random docker image)::

  docker run -it -e CQLSH_HOST=192.168.x.x -e CQLVERSION=3.4.5 nuvo/docker-cqlsh bash

Create Keyspace::
  
  cqlsh> CREATE KEYSPACE test WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 1};

Use the new Keyspace::
  
  cqlsh> USE test;