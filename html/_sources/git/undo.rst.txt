Undo in git
------------

Collection of useful commands to undo whatever you did wrong in git.

Undo committed changes
~~~~~~~~~~~~~~~~~~~~~~

Undo the last commit (but keep the changes)

::

  git reset --soft HEAD~1


Undo staged changes
~~~~~~~~~~~~~~~~~~~

Unstage everything but keep changes

::

  git reset

Undo unstaged changes
~~~~~~~~~~~~~~~~~~~~~

Permanently discard local changes to a file

::

  git checkout -- <file>

Permanently discard **all** local changes

::

  git reset --hard

