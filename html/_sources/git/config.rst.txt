Config management
------------------

List all active git config parameters on your system

::

  git config --list --show-origin

Configure a ``git`` alias

::

  git config --global --add alias.la "log --all --graph --oneline --decorate"

Remote a ``git`` alias

::

  git config --global --unset alias.la
