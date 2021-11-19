Cheatsheet
----------

File Query
~~~~~~~~~~~

Which package provides a file ?::

  yum whatprovides /etc/nagios

What files are provided by a package ?::

  repoquery --list nagios

Package
~~~~~~~

General information about a package::

  repoquery -i nginx

Dependencies of a package::

  yum deplist nrpe

Repository
~~~~~~~~~~

List packages provided by one specific repo::

  yum list --disablerepo="*" --enablerepo="epel"
