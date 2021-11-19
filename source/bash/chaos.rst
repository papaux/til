Chaos generators
----------------

Randomly kill a process with a given name::

  while true; do sleep 5; pidof processname | xargs shuf  -n1 -e | xargs kill -9; done
