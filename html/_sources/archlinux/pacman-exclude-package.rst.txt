Pacman: exclude package
-----------------------

Exclude packages while updating your system (e.g. for excluding kernel updates) can be achieved with two options.

To permanently ignore packages, add this line to your ``pacman.conf.conf``::

  IgnorePkg   = linux linux-headers

To temporarly ignore some packages, use the ``--ignore`` option::

  sudo pacman -Syu --ignore=linux,linux-headers


