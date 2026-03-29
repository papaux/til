Postgres Benchmark
------------------

Some useful commands or queries when benchmarking a Postgres database server.

pgbench
~~~~~~~

Setup::
    
    pgbench -i -s 50 example

Options:
* `-i` : initialize the database
* `-s` : scale factor, the larger the number, the more data is generated

Run benchmark::

    pgbench -c 10 -j 2 -t 10000 example

Options:
* `-c` : number of clients
* `-j` : number of threads
* `-t` : number of transactions per client
