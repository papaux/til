Reset commands
-------------------

Reset local branch
~~~~~~~~~~~~~~~~~~~

This command resets your working copy of a branch to be exactly the same as the remote, deleting all new files and reverting all modifications.

We first fetch the origin to get the latest changes and then do the reset.

::

  git fetch origin
  git reset --hard origin/my-branch
