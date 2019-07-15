CentOS based
-------------

Tricks when you are running a CentOS based container

Base packages
~~~~~~~~~~~~~~

Some base packages that are missing for doing very basic stuff on the container: 

::

  yum update && yum install net-tools iputils 


What these packages provide:

- ``net-tools``: ``ifconfig``
- ``iputils`` : ``ping``
