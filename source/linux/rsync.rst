rsync
-----

The fastest rsync command, 3x more throughput than the standard one::

  rsync -r --stats --progress -e "ssh -T -c arcfour -o Compression=no -x"  src dst

