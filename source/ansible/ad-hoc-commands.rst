Ansible: Ad-hoc commands
------------------------

You need to run a single command on multiple machines? This can be achieved with ad-hoc commands by using the ``raw`` module.

::
  
  ansible all -i hosts-inventory -m raw -a "yum install package-abc" --become

Parameters:

- ``-i`` inventory: specify the file containing the hosts definition
- ``-m raw`` module: specify the raw module, executing a command directly on the remote host
- ``-a CMD`` argument: the command that will be run, given as parameter to the module
- ``--become``: run the command as a different user, in this case run with ``sudo``
