Installation date
---------------------

Knowing the installation date from the machine you are logged into can be a not so easy task. This page shows how to do it for several Linux distributions.

CentOS / Fedora
~~~~~~~~~~~~~~~~~

::
  
  rpm -qi basesystem | grep Install 

Be careful: if you upgraded your system from a previous version, this will give you the upgrade time and not first installation date.

ArchLinux
~~~~~~~~~~

::

  head -n1 /var/log/pacman.log

Generic
~~~~~~~

Some other generic ways that should work accross distributions, but require root access:

::

  mount  | grep " / " | awk '{ print $1 }' | xargs -I{}  sudo dumpe2fs {} | grep created

::

  mount  | grep " / " | awk '{ print $1 }' | xargs -I{}  sudo tune2fs -l {} | grep created